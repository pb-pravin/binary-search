-- | This package provides combinators to construct many variants of
-- binary search.  Most generally, it provides the binary search over
-- predicate of the form @('Eq' b, 'Monad' m) => a -> m b@ . The other
-- searches are derived as special cases of this function.
--
-- 'BinarySearch' assumes two things;
--
-- 1. @b@, the codomain of 'PredicateM' belongs to type class 'Eq'.
--
-- 2. Each value of @b@ form a convex set in the codomain space of the
-- PredicateM. That is, if for certain pair @(left, right) :: (a, a)@
-- satisfies @pred left == val && pred right == val@, then also @pred
-- x == val@ for all @x@ such that @left <= x <= right@ .


module Numeric.Search (
-- * Pure combinators
-- $pureCombinators

-- ** Types
Range,
-- ** Searchers

-- ** Combinators

-- * Monadic combinators
-- $monadicCombinators

-- ** Types
BinarySearchM,
PredicateM,
InitializerM,
CutterM,

-- ** Searchers
searchWithM
-- ** Combinators

) where

import Numeric.Search.Combinator.Pure
import Numeric.Search.Combinator.Monadic

{- $pureCombinators
   These are pure.
-}
{- $monadicCombinators
   These are monadic.
 -}