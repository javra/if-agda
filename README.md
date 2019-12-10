# A Syntax for Mutual Inductive Families

These agda files are a formalization of the Paper with the above title. They are supposed to be checked using Agda version 2.5.4.1. Later versions of Agda might brake the rewrite pragmas we used.

## IF.agda

Contains the syntax for indexed inductive types with contexts for sort (`SCon`) and for point constructors (`Con`).

## IFA.agda

Contains the Set interpretation of the syntax described in IF.agda, describing algebras of indexed inductive types.

## IFM.agda

Contains the model for the indexed inductive types which describes morphisms.

## IFD.agda

Contains displayed algebras of indexed inductive types. These algebras depend on an algebra as described in IFA.agda.

## IFS.agda

Contains the indexed inductive type interpretation for the section of the aforementioned displayed algebras.

## IFEx.agda

Shows the existence of inductive families given the internalization of the syntax as given in IF.agda.

## Examples.agda

Lists some of the Examples presented in the paper: natural numbers, parity, and vectors.