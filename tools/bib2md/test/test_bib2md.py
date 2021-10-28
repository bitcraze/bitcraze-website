import os
import sys
import unittest

# change path to allow importing from parent dir
sys.path.insert(1, os.path.join(sys.path[0], ".."))
from src.bib2md import BitcrazeStyle


class LocalizationTest(unittest.TestCase):
    def setUp(self):
        # TODO cahnge class name
        self.sut = BitcrazeStyle()

    def test_that_no_ouput_for_empty_input(self):
        # fixture
        expected = []

        # test
        actual = self.sut.find_url_identifiers("")

        # assert
        self.assertEqual(expected, actual)

    def test_that_no_ouput_for_white_space(self):
        # fixture
        expected = []

        # test
        actual = self.sut.find_url_identifiers("      ")

        # assert
        self.assertEqual(expected, actual)

    def test_that_a_single_unknown_url_returns_correct_identifier(self):
        # fixture
        expected = ["URL"]

        # test
        actual = self.sut.find_url_identifiers("http://www.unknown.com")

        # assert
        self.assertListEqual(expected, actual)

    def test_that_multiple_unknown_url_returns_correct_identifier(self):
        # fixture
        expected = ["URL", "URL", "URL"]

        # test
        actual = self.sut.find_url_identifiers(
            "http://www.unknown.com http://www.other.com http://www.yet-another.com"
        )

        # assert
        self.assertListEqual(expected, actual)

    def test_that_single_arxiv_url_returns_correct_identifier(self):
        # fixture
        expected = ["ArXiv"]

        # test
        actual = self.sut.find_url_identifiers(
            "https://arxiv.org/abs/1909.05150v2"
        )

        # assert
        self.assertListEqual(expected, actual)

    def test_that_youtube_url_returns_correct_identifier(self):
        # fixture
        expected = ["Video", "Video"]

        # test
        actual = self.sut.find_url_identifiers(
            "https://www.youtube.com/watch?v=JzPbvwHq8K0 https://youtu.be/JzPbvwHq8K0"
        )

        # assert
        self.assertListEqual(expected, actual)

    def test_that_single_blog_url_returns_correct_identifier(self):
        # fixture
        expected = ["URL", "Blog"]

        # test
        actual = self.sut.find_url_identifiers(
            "https://www.bitcraze.io/portals/research/ https://www.bitcraze.io/2021/10/bam-days-are-a-wrap/"
        )

        # assert
        self.assertListEqual(expected, actual)

    def test_that_correct_output_for_white_space_in_between_urls(self):
        # fixture
        expected = ["URL", "URL", "URL"]

        # test
        actual = self.sut.find_url_identifiers(
            "http://www.unknown.com http://www.other.com        http://www.yet-another.com"
        )

        # assert
        self.assertListEqual(expected, actual)
