(* ::Package:: *)

SetDirectory@ParentDirectory@NotebookDirectory[];


$Days = DateRange[DatePlus[Today, -5000], Today];
$tasks = FileNames["artworks.json", ".", Infinity];


$meta = Import[file, "RawJSON"]
readme = StringTemplate@File@FileNameJoin[{DirectoryName@file, "Readme.md"}];
readme@Association[
    "TITLE" -> $meta@"Title",
    "DATE" -> DateString[RandomChoice@$Days, "ISODate"]
]