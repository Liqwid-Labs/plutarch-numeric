module Plutarch.Numeric.Additive (
    -- * Type classes
    AdditiveSemigroup (..),
    AdditiveMonoid (..),
) where

-- | @since 1.0.0
class AdditiveSemigroup a where
    (+) :: a -> a -> a

-- | @since 1.0.0
class (AdditiveSemigroup a) => AdditiveMonoid a where
    zero :: a
