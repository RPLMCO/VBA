Attribute VB_Name = "Module1"
Option Explicit

Sub RemoveDuplicates1()
    Dim AllCells As Range, Cell As Range
    Dim NoDupes As Collection
    Dim Item As Variant
    
    Set NoDupes = New Collection
    
    On Error Resume Next
    For Each Cell In Range("State").Cells
        NoDupes.Add Cell.Value, CStr(Cell.Value)
    Next Cell
    On Error GoTo 0

'   Add the non-duplicated items to a ListBox
    For Each Item In NoDupes
        UserForm1.ListBox1.AddItem Item
    Next Item

'   Display the count
    UserForm1.Label1.Caption = _
      "Unique items: " & NoDupes.Count

'   Show the UserForm
    UserForm1.Show
End Sub

