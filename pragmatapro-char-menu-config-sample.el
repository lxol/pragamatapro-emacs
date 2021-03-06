;;; Char menu allows you to enter unicode characters easily. It automatically
;;; chooses jump keys to select the glyph you would like to use. This can be a
;;; nice alternative to using and memorizing prettified symbols.

(use-package char-menu
  :bind ("M-p" . char-menu)
  :custom
  (char-menu '("—" "‘’" "“”" "…" "«»" "–"
               ("Typography" "•" "©" "†" "‡" "°" "·" "§" "№" "★")
               ("Mathematical Operators"
                "∀" "∁" "∂" "∃" "∄" "∅" "∆" "∇" "∈" "∉" "∊" "∋" "∌" "∍" "∎" "∏"
                "∐" "∑" "−" "∓" "∔" "∕" "∖" "∗" "∘" "∙" "√" "∛" "∜" "∝" "∞" "∟"
                "∠" "∡" "∢" "∣" "∤" "∥" "∦" "∧" "∨" "∩" "∪" "∫" "∬" "∭" "∮" "∯"
                "∰" "∱" "∲" "∳" "∴" "∵" "∶" "∷" "∸" "∹" "∺" "∻" "∼" "∽" "∾" "∿"
                "≀" "≁" "≂" "≃" "≄" "≅" "≆" "≇" "≈" "≉" "≊" "≋" "≌" "≍" "≎" "≏"
                "≐" "≑" "≒" "≓" "≔" "≕" "≖" "≗" "≘" "≙" "≚" "≛" "≜" "≝" "≞" "≟"
                "≠" "≡" "≢" "≣" "≤" "≥" "≦" "≧" "≨" "≩" "≪" "≫" "≬" "≭" "≮" "≯"
                "≰" "≱" "≲" "≳" "≴" "≵" "≶" "≷" "≸" "≹" "≺" "≻" "≼" "≽" "≾" "≿"
                "⊀" "⊁" "⊂" "⊃" "⊄" "⊅" "⊆" "⊇" "⊈" "⊉" "⊊" "⊋" "⊌" "⊍" "⊎" "⊏"
                "⊐" "⊑" "⊒" "⊓" "⊔" "⊕" "⊖" "⊗" "⊘" "⊙" "⊚" "⊛" "⊜" "⊝" "⊞" "⊟"
                "⊠" "⊡" "⊢" "⊣" "⊤" "⊥" "⊦" "⊧" "⊨" "⊩" "⊪" "⊫" "⊬" "⊭" "⊮" "⊯"
                "⊰" "⊱" "⊲" "⊳" "⊴" "⊵" "⊶" "⊷" "⊸" "⊹" "⊺" "⊻" "⊼" "⊽" "⊾" "⊿"
                "⋀" "⋁" "⋂" "⋃" "⋄" "⋅" "⋆" "⋇" "⋈" "⋉" "⋊" "⋋" "⋌" "⋍" "⋎" "⋏"
                "⋐" "⋑" "⋒" "⋓" "⋔" "⋕" "⋖" "⋗" "⋘" "⋙" "⋚" "⋛" "⋜" "⋝" "⋞" "⋟"
                "⋠" "⋡" "⋢" "⋣" "⋤" "⋥" "⋦" "⋧" "⋨" "⋩" "⋪" "⋫" "⋬" "⋭" "⋮" "⋯"
                "⋰" "⋱" "⋲" "⋳" "⋴" "⋵" "⋶" "⋷" "⋸" "⋹" "⋺" "⋻" "⋼" "⋽" "⋾" "⋿")
               ("Superscripts & Subscripts"
                "⁰" "ⁱ"   "⁴" "⁵" "⁶" "⁷" "⁸" "⁹" "⁺" "⁻" "⁼" "⁽" "⁾" "ⁿ"
                "₀" "₁" "₂" "₃" "₄" "₅" "₆" "₇" "₈" "₉" "₊" "₋" "₌" "₍₎"
                "ₐ" "ₑ" "ₒ" "ₓ" "ₔ" "ₕ" "ₖ" "ₗ" "ₘ" "ₙ" "ₚ" "ₛ" "ₜ")
               ("Arrows"     "←" "→" "↑" "↓" "⇐" "⇒" "⇑" "⇓")
               ("Greek"      "α" "β" "Y" "δ" "ε" "ζ" "η" "θ" "ι" "κ" "λ" "μ"
                "ν" "ξ" "ο" "π" "ρ" "σ" "τ" "υ" "φ" "χ" "ψ" "ω")
               ("Enclosed Alphanumerics"
                "①" "②" "③" "④" "⑤" "⑥" "⑦" "⑧" "⑨" "Ⓐ" "Ⓑ" "Ⓒ" "Ⓓ" "Ⓔ" "Ⓕ" "Ⓖ"
                "Ⓗ" "Ⓘ" "Ⓙ" "Ⓚ" "Ⓛ" "Ⓜ" "Ⓝ" "Ⓞ" "Ⓟ" "Ⓠ" "Ⓡ" "Ⓢ" "Ⓣ" "Ⓤ" "Ⓥ" "Ⓦ"
                "Ⓧ" "Ⓨ" "Ⓩ" "ⓐ" "ⓑ" "ⓒ" "ⓓ" "ⓔ" "ⓕ" "ⓖ" "ⓗ" "ⓘ" "ⓙ" "ⓚ" "ⓛ" "ⓜ"
                "ⓝ" "ⓞ" "ⓟ" "ⓠ" "ⓡ" "ⓢ" "ⓣ" "ⓤ" "ⓥ" "ⓦ" "ⓧ" "ⓨ" "ⓩ" "⓪")
               ("Annotations"
                "      " "      " "     " "     " "        " "    " "      " "      "
                "      " "     " "    " "     " "     " "     "))))
