title: cpp_summary
date: 2017-02-23 18:11:54
tags: cpp
---
# summary about reading <<cpp primer>>

## Entering an End-of-File from the Keyboard

When we enter input to a program from the keyboard, different operating systems use different conventions to allow us to indicate end-of-file. On Windows systems we enter an end-of-file by typing a control-z—hold down the Ctrl key and press z—followed by hitting either the Enter or Return key. On UNIX systems, including on Mac OS X machines, end-of-file is usually control-d.

输入文件终止符 

从键盘上输入文件终止符 在windows上是 ctrl + z 在unix系统上包括mac 是ctrl + d.

## Using File Redirection 
It can be tedious to repeatedly type these transactions as input to the programs you are testing. Most operating systems support file redirection, which lets us associate a named file with the standard input and the standard output:

$ addItems <infile >outfile

Assuming $ is the system prompt and our addition program has been compiled into an executable file named addItems.exe (or addItems on UNIX systems), this command will read transactions from a file named infile and write its output to a file named outfile in the current directory.

使用文件重定向 我们可以使用文件重定向到程序中的输入 cin 输出 cout ，这样程序就可以使用文件作为输入和输出。

