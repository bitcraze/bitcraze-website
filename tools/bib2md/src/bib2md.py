import calendar
import re

from pybtex import format_from_file, richtext
from pybtex.style.formatting import toplevel
from pybtex.style.formatting.unsrt import Style as UnsrtStyle
from pybtex.style.sorting.author_year_title import (
    SortingStyle as AuthorYearTitleSortingStyle,
)
from pybtex.style.template import (
    field,
    first_of,
    href,
    join,
    names,
    optional,
    optional_field,
    sentence,
    tag,
    together,
    words,
)

date = words[optional_field("month"), field("year")]


class BitcrazeStyle(UnsrtStyle):
    def get_article_template(self, e):
        # journal article template
        template = toplevel[
            self.format_btitle(e, "title"),
            self.format_names("author"),
            sentence[
                tag("em")[field("journal")],
                date,
            ],
            sentence[optional_field("note")],
            self.format_web_refs(e),
        ]
        return template

    def get_inproceedings_template(self, e):
        # conference template
        template = toplevel[
            self.format_btitle(e, "title"),
            sentence[self.format_names("author")],
            words[
                "In",
                sentence[
                    optional[self.format_editor(e, as_sentence=False)],
                    self.format_ititle(e, "booktitle", as_sentence=False),
                ],
                self.format_address_organization_publisher_date(e),
            ],
            self.format_web_refs(e),
        ]
        return template

    def format_btitle(self, e, which_field, as_sentence=True):
        # format as bold title
        formatted_title = tag("em")[tag("em")[field(which_field)]]
        if as_sentence:
            return sentence[formatted_title]
        else:
            return formatted_title

    def format_ititle(self, e, which_field, as_sentence=True):
        # format as italic title
        formatted_title = tag("em")[field(which_field)]
        if as_sentence:
            return sentence[formatted_title]
        else:
            return formatted_title

    def find_eprint_identifiers(self, urls):
        url_list = re.sub(" +", " ", urls.strip()).split(" ")
        if url_list == [""]:
            return [[]]
        else:
            return [self._get_eprint_identifier(url) for url in url_list]

    def _get_eprint_identifier(self, url):
        if "arxiv.org" in url:
            return ["ArXiv", url]
        return ["Eprint", url]

    def find_url_identifiers(self, urls):
        url_list = re.sub(" +", " ", urls.strip()).split(" ")
        if url_list == [""]:
            return [[]]
        else:
            return [self._get_url_identifier(url) for url in url_list]

    def _get_url_identifier(self, url):
        if "arxiv.org" in url:
            return ["ArXiv", url]
        if "youtu" in url:
            return ["Video", url]
        if re.search(".*bitcraze.io+\/\d+/\d+", url):
            url = re.sub("^.*bitcraze.io", "", url)
            return ["Blog", url]
        url = re.sub("^.*bitcraze.io", "", url)
        return ["URL", url]

    def format_url(self, e):
        """Format entries in the url field, supports infinite number of urls"""
        try:  # check if there is an url entry
            e.fields["url"]
        except KeyError:
            return richtext.Text("")
        else:
            link_identifier_list = self.find_url_identifiers(e.fields["url"])

            return sentence(add_period=False)[
                [
                    href[
                        entry[1],
                        entry[0],
                    ]
                    for entry in link_identifier_list
                ]
            ]

    def format_doi(self, e):
        return href[
            join["https://doi.org/", field("doi", raw=True)],
            join["DOI"],
        ]

    def format_eprint(self, e):
        """Format entries in the url field, supports infinite number of urls"""
        try:  # check if there is an url entry
            e.fields["eprint"]
        except KeyError:
            return richtext.Text("")
        else:
            link_identifier_list = self.find_eprint_identifiers(e.fields["eprint"])

            return sentence(add_period=False)[
                [
                    href[
                        entry[1],
                        entry[0],
                    ]
                    for entry in link_identifier_list
                ]
            ]

class ChronologicalSorting(AuthorYearTitleSortingStyle):
    def sorting_key(self, entry):
        months = [month[0:3].lower() for month in calendar.month_name[0:13]][
            ::-1
        ]
        if entry.type in ("book", "inbook"):
            author_key = self.author_editor_key(entry)
        elif "author" in entry.persons:
            author_key = self.persons_key(entry.persons["author"])
        else:
            author_key = ""
        return (
            str(
                3000 - int(entry.fields.get("year", ""))
            ),  # hacky - will stop working in the year 3001
            months.index(entry.fields.get("month", "").lower()),
            author_key,
            entry.fields.get("title", ""),
        )


def generate_markdown_from_bib(
    bib_path, markdown_path="crazyflie_publications.md"
):
    return format_from_file(
        filename=bib_path,
        style=BitcrazeStyle,
        sorting_style=ChronologicalSorting,
        output_backend="markdown",
        output_filename=markdown_path,
    )
