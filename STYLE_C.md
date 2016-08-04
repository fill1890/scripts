## Style Guide for C projects
### Authored by Andrew Walls

Pointer characters (\*) have a space between the type and the pointer:

`[type] *(variable|function)`

e.g:  
`char *func(int *a, char *b)`  
`char *buffer`

Indexing characters ([]) come directly after the variable:

`[type] (variable)[[n]]`

e.g:  
`int main(int argc, char *argv[])`  
`char string[3]`  
`a = b[3]`

Surround ternary (?:) and binary (\*, /, +, -, etc.) with spaces, but place
unary operators (++, --, etc.) next to their variable:

`(condition) ? (true) : (false)`  
`(variable) (+|-|*|/|...) (variable)`  
`(++|--|...)(variable)`  

e.g.  
`a == b ? 'Y' : 'N'`  
`a + b`  
`a /= b`  
`i++`  

There should be no space between a function name and its argument list,
and braces should be dropped to a new line:

```
(type) (function name)((type) (variable), ...)
{
    ...
}
```

e.g:

```
int main(int argc, char *argv[])
{
    ...
}
```

```
int long_function(
    int arg1,
    int arg2,
    char *arg3)
{
    ...
}
```

Loops and conditional statments should have a space between the keyword and conditions list, and open braces on the same line (Braces not required for inline statments):

```
(for|while|...) ((condition)) {
    ...    
}
```

e.g:

```
for (i = 0; i < 10; i++) {
    ...
}
```

`if (err == 1) return 1`

Functions parameters and return values should be documented in the header file using `@param` and `@return`, as well as function description, known bugs, author(s) and preferably date of last edit. Date format and original author along with other significant authors should be specified at the top of the header file. dd/mm/yyyy format is preferred but not mandated.

Function names should be lowercase and words separated with underscores. As arguments are usually nouns, function names should generally be verbs or be suffixed with a preposition such as 'of'.

`int multiply(int a, int b)`
`char \*digits\_of(int num)` rather than `char \*digits(int num)`
