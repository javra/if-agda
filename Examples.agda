{-# OPTIONS --rewriting #-}

module Examples where

open import Lib hiding (id; _∘_)
open import IF

-- Natural Numbers

ConNat : Con (∙c ▶c U)
ConNat = ∙ ▶P El vz
           ▶P vz ⇒P El vz

-- Vectors

ConVec : Set → Con (∙c ▶c Π̂S nat λ _ → U)
ConVec A = ∙ ▶P El (vz $S Z)
             ▶P Π̂P nat (λ n → (vz $S n) ⇒P Π̂P A λ _ → El (vz $S (n +1)))


-- Parity Predicates

ConPar : Con (∙c ▶c (Π̂S nat (λ _ → U)) ▶c Π̂S nat λ _ → U)
ConPar = ∙ ▶P El (vs vz $S Z)
           ▶P Π̂P nat (λ n → (vz $S n) ⇒P El (vs vz $S (n +1)))
           ▶P Π̂P nat (λ n → (vs vz $S n) ⇒P El (vz $S (n +1)))
