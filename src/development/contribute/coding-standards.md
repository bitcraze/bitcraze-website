---
layout: page-left-menu
title: Coding Standards
page_id: coding-standards
---
## Coding standard for C
### Indentation
The [Allman style indentation](https://en.wikipedia.org/wiki/Indent_style#Allman_style) is used.

### Doxygen
#### Main principles
All functions/variables/files/macros/typedefs/structs/unions etc should be documented. The main rule is that everything in the .h file is documented and everything in the .c file is documented (except for the things already documented in the .h) file. Function prototypes and other declarations are documented and not imports and implementations. No documentation should be added for stack allocated variables.

The use of redundant information and excessive tag usage should be avoided. See the following example of the documentation for a file:
```
/**
 * @brief This is a brief description
 *
 * @details This is a detailed description of what this file does. This
 * can be multi-line and multi-sentance.
 *
 * @file driver.c
 */
```

Using the correct settings for Doxygen the same can be accomplished using:
```
/**
 * This is a brief description.
 *
 * This is a detailed description of what this file does. This
 * can be multi-line and multi-sentance.
 *
 * @file
 */
```

The tags for Doxygen should use the @ and the comments should use the notation except for [structs/enums/etc](#structsenumsunions) (see below):

```
/** Doxygen comment */

/**
 * Doxygen comment.
 * More comments
 */
```

#### Dox files
There's a couple of special files used to set everything up:
  * config.dox - holds the Doxygen configuration
  * mainpage.dox - hold the main page for the doxygen documentation
  * groups.dox - holds the definitions of the groups used

#### Grouping
A group is detailed in the groups.dox file and is documented using:
```
/**
 * @defgroup drivers
 *
 * This is a brief description of the drivers group.
 *
 * This is a detailed description of what the driver
 * group does etc..
 */
```

Any tag can then be added to the group by using the ingroup tag:
```
/**
 * This documents a file.
 *
 * Detailed description of file. This can be multi-line
 * and multi-sentance.
 *
 * @file
 * @ingroup hal
 */
...

/**
 * Main task for LEDs.
 *
 * This task is responsible for driving the LEDs and lighting
 * them according to the scheme that is currently set.
 *
 * @param[in] param The parameters for the task
 *
 * @ingroup tasks
 */
void ledTask(void *param);

/**
 * Keeps track of number of blinks.
 *
 * @ingroup variables
 */
uint32_t nbrOfBlinks;

```
#### Files
The file header should follow this template:
```
/*
Insert license text here.
*/

/**
 * This is the brief description.
 *
 * This is the detailed description. It is multi-line
 * and multi-sentance.
 *
 * @file
 * @ingroup drivers
 */
```

#### Functions
Functions should be documented according to the following:
```
/**
 * This is the brief description.
 *
 * This is the detailed description. It can be multi-line and
 * multi-sentance.
 *
 * @param[in]  param1 Pass data into the function
 * @param[out] param2 Pass buffer to put return data into
 *
 * @return Description of the return (omitted if void)
 * @ingroup group
 */
```


#### Structs/enums/unions
The same style should be used for structs/enums/unions:
```
/** Struct for Testing */
typedef struct {
  uint32_t var1;  ///< Variable 1
  uint32_t var2;  ///< Variable 2
} TestStruct;
```

#### Variables/typedefs
The following should be used for variables/typedef declarations.
```
/** Definition of U32 */
typedef uint32_t U32;

/** Variable for counting calls */
uint32_t calls;
```

#### Macros

```
/** Max count for things */
#define MAX_COUNT

/** Macro for selecting max value */
#define MAX(a,b) (a>b?a:b)
```

## Coding standard for Python
We aim to follow [PEP-8](https://www.python.org/dev/peps/pep-0008/|PEP-8) and [PEP-257](https://www.python.org/dev/peps/pep-0257/) as much as possible.

### Documentation
For documentation doc strings are used.

### Static analysis
For static code analysis [Flake8](https://pypi.python.org/pypi/flake8) and [pylint](https://www.logilab.org/857) are used. For pylint the following exceptions has been made:
  * These has been added to the list of good variables
    * pk - used all over for variables that are CRTPPacket
    * cf - used all over for variables that are Crazyflie
    * logger - used all over as a file-global logger
    * cb - used all over to describe an argument or variable that is a callback
