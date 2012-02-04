module TextBlock (text) where 

import Language.Haskell.TH
import Language.Haskell.TH.Quote 

text :: QuasiQuoter
text = QuasiQuoter {
            quoteExp = stringE
          , quotePat = undefined
          , quoteType = undefined
          , quoteDec = undefined
          }
