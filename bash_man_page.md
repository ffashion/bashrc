# Options

# Arguments

# Invocation

# Definitions

# Reserved words

# Shell Grammar

## Simple Commands

## Pipelines

## Lists

## Compound Commands

## Coprocesses

## Shell Function Definitions

# Comments 

# Quoting



# Parameters

## Positional Parameters

## Special Parameters

## Shell Variables

## Arrays

# Expansion

## Brace Expansion

## Tilde Expansion

## Parameter Expansion

## Command Substitution

## Arithmetic Expansion

## Process Substitution

## Word Splitting

## Pathname Expansion

## Quote Removal

# Redirection

## Redirecting Input

## Redirecting Output

## Appending Redirected Output

## Redirecting Standard Output and Standard Error

## Appending Standard Output and Standard Error

## Here Documents

## Here Strings

## Duplicating File Descriptors

## Moving File Descriptors

## Opening File Descriptors for Reading and Writing

# Aliases

# Functions

# Arithmetic Evaluation

## Conditional Expressions

# Simple Command Expansion

# Command Execution

# Command Execution Environment

# Environment 

# Exit Status

# Signals 

# Job Control

# Prompting

# Readline

## Readline Notation

## Readline Initialization









## Readline Key Bindings

1. command ,macro ,key 
   1. key 
      1. keyname
      2. keyseq
   2. command 也叫function-name
   3. macro text of macro
2. 语法
   1. keyname : {function-name |  macro}
      1. Control-u : universal-argument
      2. Control-o: "> output"  //添加宏 意思是将向行种插入>output
   2. keyseq : {function-name | macro }  keyseq需要加双引号
      1. "\C-u" ：{function-name |  macro}
3. Emacs转义序列
   1. \C- Ctrl 前缀
   2. \M- Mate前缀
   3. \e  一个ESC字符
   4. \\ 反斜杠
   5. \" 字面上的"
   6. \\' 字面上的‘ 

## Readline Variables

1. 设置一些变量

## Readline Conditional Constructs

1. 允许根据测试结果进行键盘关联和变量测试。

   1. $if

      1. mode= 

      2. term= 

      3. application

         1. ```bash
            $if Bash 
            "\C-xq" : "\eb\"\e\f""
            $endif
            ```

   2. $endif

   3. $else

   4. $include 

## Searching

1. incremental
2. non-incremental

## Readline Command Names

1. 

## Commands for Moving

## Commands for Manipulating the History

## Commands for Changing Text

## Killing and Yanking

## Numeric Arguments

## Completing

## Keyboard Macros

## Miscellaneous

## Programmable Completion

# History

# History Expansion

## Event Designators

## Word Designators

## Modifiers

# Shell Builtin Commands

: [arguments]

. filename [arguments]

source filename [arguments]

 alias [-p] [name[=value] ...]

bg [jobspec ...]

bind [-m keymap] [-lpsvPSV]

bind [-m keymap] [-q function] [-u function] [-r keyseq]

bind [-m keymap] -f filename

bind [-m keymap] -x keyseq: shell-command

bind [-m keymap] keyseq: function-name

bind readline-command

# Restricted Shell