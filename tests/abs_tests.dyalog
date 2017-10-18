:Namespace abs_tests

⎕IO ⎕ML ⎕WX←0 1 3

X←{⊢#.UT.expect←⍵} ⋄ M←#.mystika

ABS∆01_TEST←{_←X 16⍪(9⍴16)⊤0 ⋄ M.abs 16⍪(9⍴16)⊤0}
ABS∆02_TEST←{_←X 16⍪(9⍴16)⊤1 ⋄ M.abs 16⍪(9⍴16)⊤1}
ABS∆03_TEST←{_←X 16⍪(9⍴16)⊤1 ⋄ M.abs 16⍪(9⍴16)⊤¯1}
ABS∆04_TEST←{_←X 65552⍪(9⍴16)⊤1 ⋄ M.abs 65552⍪(9⍴16)⊤1}
ABS∆05_TEST←{_←X 65552⍪(9⍴16)⊤1 ⋄ M.abs 65552⍪(9⍴16)⊤¯1}
ABS∆06_TEST←{_←X 16⍪(9⍴16)⊤3678667686 ⋄ M.abs 16⍪(9⍴16)⊤3678667686}
ABS∆07_TEST←{_←X 16⍪(10⍴16)⊤2489643441 ⋄ M.abs 16⍪(10⍴16)⊤¯2489643441}
ABS∆08_TEST←{_←X 16⍪(10⍴16)⊤(2 2⍴2489643441 335219058 655842322 3036358490) ⋄ M.abs 16⍪(10⍴16)⊤2 2⍴¯2489643441 335219058 655842322 ¯3036358490}

:EndNamespace