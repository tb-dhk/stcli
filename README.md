# stcli

**stcli** is a command-line tool designed for tracking progress during a revision season while preparing for examinations. it provides a hierarchical structure to organize your classes, subjects, and topics, enabling effective tracking and visualization of your progress over time.

> **note**: this tool is not meant for tracking assignments.

---

## features

- **class structure**: organize your revision into classes, subjects, and topics.
- **path-based navigation**: use paths to represent hierarchy (e.g., `class/subject/topic`).
- **flexible commands**: add, edit, log, and visualize progress through intuitive commands.
- **visualization**: view progress as trees or graphs.
- **customizable**: modify topic names and colors for better organization.

---

## usage

### general syntax
```bash
stcli [command] [args]
```

### brief explanation
- each class represents a revision season.
- classes contain several subjects, and subjects contain multiple topics.
- paths use backslashes (`/`) to separate elements in the hierarchy.  
  for example: `class/subject/topic`.

---

## commands

### 1. **add paths**
```bash
stcli add [path]
```
- adds a new path to the hierarchy.

---

### 2. **remove paths**
```bash
stcli rm [path]
```
- removes the specified path from the hierarchy.

---

### 3. **edit topics or subjects**
```bash
stcli edit [path] [kwargs]
```
- edits a topic or subject.  
- supported `kwargs`:
  - `name`: rename the element.
  - `color`: change the color (e.g., `#ff0000` for red).

#### example
```bash
stcli edit class/subject/topic1 name=topic2 color=#ff0000
```
- moves `class/subject/topic1` to `class/subject/topic2` and sets the color to red.

---

### 4. **log progress**
```bash
stcli log [path] [number]
```
- logs progress for a topic.  
- `number` must be an integer or float from 0 to 100 (inclusive).

```bash
stcli log [path] [date] [number]
```
- specify a date (format: `yyyy-mm-dd`) for logging progress.

#### examples
```bash
stcli log class/subject/topic 50
stcli log class/subject/topic 2025-01-27 75
```

---

### 5. **display tree**
```bash
stcli tree [path] [kwargs]
```
- displays a tree of the hierarchy, starting from the specified path.  
- supported `kwargs`:
  - `dt`: specify a date (`yyyy-mm-dd`) to view progress for that date.
  - `sort`: sort the tree by `alphabetical` or `completion`.

#### example
```bash
stcli tree class dt=2025-01-01 sort=alphabetical
```

---

### 6. **display graph**
```bash
stcli graph [path] [start] [end] [group]
```
- displays progress as a graph for the specified element.  
- arguments:
  - `start` and `end`: dates in `yyyy-mm-dd` format.
  - `group`: specify grouping:
    - `week`: group by weeks (first day of the week is shown).
    - `month`: group by months (progress value is from the last day of the month).
    - integer: group by a custom number of days.

#### example
```bash
stcli graph class/subject 2025-01-01 2025-01-31 week
```

---

## example paths

- `class/subject/topic`: refers to `topic` under `subject` in `class`.
- hierarchies can be nested to reflect your structure.

---

## installation

1. clone the repository.
2. install dependencies (if any).
3. run `stcli` from your terminal.

---

## notes

- **grouping**: grouping progress in graphs defaults to the last day in each group for determining the value.
- **directory structure**: ensure the tool has the appropriate permissions to access or create the file structure at `~/.stcli/data.json`.

---

## contribution

feel free to fork and create a pull request for new features or bug fixes. feedback and suggestions are always welcome!
