# merlin32-action
A Github Action for running Merlin32 Assembler against your project.


# Required Arguments

This action can receive three `ARG`s:

1. The directory of the source to assemble, eg: `src` or `.`

2. The file to assemble, eg: `main.s`

3. The Macro directory, eg: `.` or `macros`

# Example usage
```
workflow "All pushes" {
  on = "push"
  resolves = ["Assemble the Code"]
}

action "Assemble the Code" {
  uses = "digarok/merlin32-action@master"
  args = ["src", "example.s", "."]
}
```


