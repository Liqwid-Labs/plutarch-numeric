module Plutarch.Numeric.Additive (
    -- * Type classes
    AdditiveSemigroup (..),
    AdditiveMonoid (..),
) where

import Plutarch (Term)
import Plutarch.Integer (PInteger)
import qualified Prelude

-- | @since 1.0.0
class AdditiveSemigroup a where
    (+) :: a -> a -> a

-- | @since 1.0.0
class (AdditiveSemigroup a) => AdditiveMonoid a where
    zero :: a

-- | @since 1.0.0
instance AdditiveSemigroup (Term s PInteger) where
    (+) = (Prelude.+)

-- | @since 1.0.0
instance AdditiveMonoid (Term s PInteger) where
    zero = 0
