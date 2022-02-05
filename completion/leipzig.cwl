# leipzig package
# Matthew Bertucci 2/4/2022 for v2.3

#include:glossaries
#include:glossary-inline
#include:glossary-mcols
#include:glossary-tree

#keyvals:\usepackage/leipzig#c
glossaries
noglossaries
glosses
leipzig
nostandards
block
mcolblock
inline
leipzighyper
leipzignohyper
# options passed to glossaries package
nowarn
nolangwarn
noredefwarn
debug=#false,true,showtargets,showaccsupp
savewrites#true,false
translate=#true,false,babel
notranslate
hyperfirst#true,false
writeglslabels
writeglslabelnames
toc#true,false
numberline#true,false
section=%<section unit%>
ucmark#true,false
numberedsection=#false,nolabel,autolabel
savenumberlist#true,false
entrycounter#true,false
counterwithin=%<counter%>
subentrycounter#true,false
style=
nolong
nosuper
nolist
notree
nostyles
nonumberlist
seeautonumberlist
counter=%<counter%>
nopostdot#true,false
nogroupskip#true,false
seenoindex=#error,warn,ignore
esclocations#true,false
indexonlyfirst#true,false
sanitizesort#true,false
sort=#standard,def,use,none
order=#word,letter
makeindex
xindy
xindygloss
xindynoglsnumbers
automake=#false,true,immediate
disablemakegloss
restoremakegloss
nohypertypes={%<list%>}
nomain
symbols
numbers
index
noglossaryindex
acronym#true,false
acronyms
acronymlists={%<value%>}
shortcuts
compatible-2.07#true,false
compatible-3.07#true,false
kernelglossredefs={%<value%>}
#endkeyvals

\newleipzig{label}{short}{long}#l
\newleipzig[options%keyvals]{label}{short}{long}#l
\renewleipzig{label}{short}{long}#l
\renewleipzig[options%keyvals]{label}{short}{long}#l

#keyvals:\newleipzig#c,\renewleipzig#c
name=
description=
parent=
descriptionplural=
text=
first=
plural=
firstplural=
symbol=
symbolplural=
sort=
type=
user1=
user2=
user3=
user4=
user5=
user6=
nonumberlist#true,false
see=
long=
longplural=
short=
shortplural=
#endkeyvals

\printglosses
\printglosses[options%keyvals]
\printleipzig
\printleipzig[options%keyvals]

#keyvals:\printglosses#c,\printleipzig#c
type=
title=
toctitle=
style=
numberedsection=#false,nolabel,autolabel
nonumberlist#true,false
nogroupskip#true,false
nopostdot#true,false
entrycounter#true,false
subentrycounter#true,false
sort=#word,letter,standard,use,def,nocase,case
#endkeyvals

#keyvals:\setglossarystyle#c
leipzigalttree
block
leipzigmcolalttree
mcolblock
#endkeyvals

#keyvals:\setacronymstyle#c
long-lpz-short
#endkeyvals

\leipzigfont{text}#*
\firstleipzigfont{text}#*
\ifleipzighyper#*
\leipzighypertrue#*
\leipzighyperfalse#*
\leipzigname#*
\ifleipzigdesccapitalize#*
\leipzigdesccapitalizetrue#*
\leipzigdesccapitalizefalse#*
\ifleipzignonumbers#*
\leipzignonumberstrue#*
\leipzignonumbersfalse#*
\ifleipzigdonotindex#*
\leipzigdonotindextrue#*
\leipzigdonotindexfalse#*
\leipzigtype#*
\glspostnamespace#*
\glsinlineshortlongseparator#*

# from leipzig.tex
\Aarg
\Abl
\Abs
\Acc
\Adj
\Adv
\Agr
\All
\Antip
\Appl
\Art
\Aux
\Ben
\Caus
\Clf
\Com
\Comp
\Compl
\Cond
\Cop
\Cvb
\Dat
\Decl
\Def
\Dem
\Det
\Dist
\Distr
\Du
\Dur
\Erg
\Excl
\F
\Foc
\Fut
\Gen
\Imp
\Incl
\Ind
\Indf
\Inf
\Ins
\Intr
\Ipfv
\Irr
\Loc
\M
\N
\Neg
\Nmlz
\Nom
\Obj
\Obl
\Parg
\Pass
\Pfv
\Pl
\Poss
\Pred
\Prf
\Prs
\Prog
\Proh
\Prox
\Pst
\Ptcp
\Purp
\Q
\Quot
\Recp
\Refl
\Rel
\Res
\Sarg
\Sbj
\Sbjv
\Sg
\Top
\Tr
\Voc
\First
\Second
\Third
\Fsg
\Fdu
\Fpl
\Ssg
\Sdu
\Spl
\Tsg
\Tdu
\Tpl
\Subj#S

# from options passed to glossaries package
#ifOption:debug=showtargets
\glsshowtarget{target name}
\glsshowtargetouter{label}
\glsshowtargetfont#*
#endif
#ifOption:debug=showaccsupp
\glsshowaccsupp{options}{tag}{replacement text}
#endif
#ifOption:translate=babel
#include:glossaries-babel
#endif
#ifOption:symbols
\printsymbols
\printsymbols[options%keyvals]
#endif
#ifOption:numbers
\printnumbers
\printnumbers[options%keyvals]
#endif
#ifOption:index
\newterm{term}
\newterm[options%keyvals]{term}
\printindex
\printindex[options%keyvals]
#endif
#ifOption:acronym
\printacronyms
\printacronyms[options%keyvals]
#endif
#ifOption:acronym=true
\printacronyms
\printacronyms[options%keyvals]
#endif
#ifOption:acronyms
\printacronyms
\printacronyms[options%keyvals]
#endif
\DeclareAcronymList{list}#*
\SetAcronymLists{list}#*
\glsIfListOfAcronyms{label}{true}{false}#*
\DefineAcronymSynonyms#*
#ifOption:compatible-2.07
#include:glossaries-compatible-207
#endif
#ifOption:compatible-2.07=true
#include:glossaries-compatible-207
#endif
#ifOption:shortcuts
\acs{label}#r
\acs[options%keyvals]{label}#r
\acs{label}[insert]#*r
\acs[options%keyvals]{label}[insert]#*r
\acs*{label}#Sr
\acs*[options]{label}#Sr
\acs*{label}[insert]#Sr
\acs*[options]{label}[insert]#Sr
\acs+{label}#Sr
\acs+[options]{label}#Sr
\acs+{label}[insert]#Sr
\acs+[options]{label}[insert]#Sr
\Acs{label}#r
\Acs[options%keyvals]{label}#r
\Acs{label}[insert]#*r
\Acs[options%keyvals]{label}[insert]#*r
\Acs*{label}#Sr
\Acs*[options]{label}#Sr
\Acs*{label}[insert]#Sr
\Acs*[options]{label}[insert]#Sr
\Acs+{label}#Sr
\Acs+[options]{label}#Sr
\Acs+{label}[insert]#Sr
\Acs+[options]{label}[insert]#Sr
\acsp{label}#*r
\acsp[options%keyvals]{label}#*r
\acsp{label}[insert]#*r
\acsp[options%keyvals]{label}[insert]#*r
\acsp*{label}#Sr
\acsp*[options]{label}#Sr
\acsp*{label}[insert]#Sr
\acsp*[options]{label}[insert]#Sr
\acsp+{label}#Sr
\acsp+[options]{label}#Sr
\acsp+{label}[insert]#Sr
\acsp+[options]{label}[insert]#Sr
\Acsp{label}#*r
\Acsp[options%keyvals]{label}#*r
\Acsp{label}[insert]#*r
\Acsp[options%keyvals]{label}[insert]#*r
\Acsp*{label}#Sr
\Acsp*[options]{label}#Sr
\Acsp*{label}[insert]#Sr
\Acsp*[options]{label}[insert]#Sr
\Acsp+{label}#Sr
\Acsp+[options]{label}#Sr
\Acsp+{label}[insert]#Sr
\Acsp+[options]{label}[insert]#Sr
\acl{label}#r
\acl[options%keyvals]{label}#r
\acl{label}[insert]#*r
\acl[options%keyvals]{label}[insert]#*r
\acl*{label}#Sr
\acl*[options]{label}#Sr
\acl*{label}[insert]#Sr
\acl*[options]{label}[insert]#Sr
\acl+{label}#Sr
\acl+[options]{label}#Sr
\acl+{label}[insert]#Sr
\acl+[options]{label}[insert]#Sr
\Acl{label}#r
\Acl[options%keyvals]{label}#r
\Acl{label}[insert]#*r
\Acl[options%keyvals]{label}[insert]#*r
\Acl*{label}#Sr
\Acl*[options]{label}#Sr
\Acl*{label}[insert]#Sr
\Acl*[options]{label}[insert]#Sr
\Acl+{label}#Sr
\Acl+[options]{label}#Sr
\Acl+{label}[insert]#Sr
\Acl+[options]{label}[insert]#Sr
\aclp{label}#*r
\aclp[options%keyvals]{label}#*r
\aclp{label}[insert]#*r
\aclp[options%keyvals]{label}[insert]#*r
\aclp*{label}#Sr
\aclp*[options]{label}#Sr
\aclp*{label}[insert]#Sr
\aclp*[options]{label}[insert]#Sr
\aclp+{label}#Sr
\aclp+[options]{label}#Sr
\aclp+{label}[insert]#Sr
\aclp+[options]{label}[insert]#Sr
\Aclp{label}#*r
\Aclp[options%keyvals]{label}#*r
\Aclp{label}[insert]#*r
\Aclp[options%keyvals]{label}[insert]#*r
\Aclp*{label}#Sr
\Aclp*[options]{label}#Sr
\Aclp*{label}[insert]#Sr
\Aclp*[options]{label}[insert]#Sr
\Aclp+{label}#Sr
\Aclp+[options]{label}#Sr
\Aclp+{label}[insert]#Sr
\Aclp+[options]{label}[insert]#Sr
\acf{label}#r
\acf[options%keyvals]{label}#r
\acf{label}[insert]#*r
\acf[options%keyvals]{label}[insert]#*r
\acf*{label}#Sr
\acf*[options]{label}#Sr
\acf*{label}[insert]#Sr
\acf*[options]{label}[insert]#Sr
\acf+{label}#Sr
\acf+[options]{label}#Sr
\acf+{label}[insert]#Sr
\acf+[options]{label}[insert]#Sr
\Acf{label}#r
\Acf[options%keyvals]{label}#r
\Acf{label}[insert]#*r
\Acf[options%keyvals]{label}[insert]#*r
\Acf*{label}#Sr
\Acf*[options]{label}#Sr
\Acf*{label}[insert]#Sr
\Acf*[options]{label}[insert]#Sr
\Acf+{label}#Sr
\Acf+[options]{label}#Sr
\Acf+{label}[insert]#Sr
\Acf+[options]{label}[insert]#Sr
\acfp{label}#*r
\acfp[options%keyvals]{label}#*r
\acfp{label}[insert]#*r
\acfp[options%keyvals]{label}[insert]#*r
\acfp*{label}#Sr
\acfp*[options]{label}#Sr
\acfp*{label}[insert]#Sr
\acfp*[options]{label}[insert]#Sr
\acfp+{label}#Sr
\acfp+[options]{label}#Sr
\acfp+{label}[insert]#Sr
\acfp+[options]{label}[insert]#Sr
\Acfp{label}#*r
\Acfp[options%keyvals]{label}#*r
\Acfp{label}[insert]#*r
\Acfp[options%keyvals]{label}[insert]#*r
\Acfp*{label}#Sr
\Acfp*[options]{label}#Sr
\Acfp*{label}[insert]#Sr
\Acfp*[options]{label}[insert]#Sr
\Acfp+{label}#Sr
\Acfp+[options]{label}#Sr
\Acfp+{label}[insert]#Sr
\Acfp+[options]{label}[insert]#Sr
\ac{label}#r
\ac[options%keyvals]{label}#r
\ac{label}[insert]#*r
\ac[options%keyvals]{label}[insert]#*r
\Ac{label}#r
\Ac[options%keyvals]{label}#r
\Ac{label}[insert]#*r
\Ac[options%keyvals]{label}[insert]#*r
\ac*{label}#Sr
\ac*[options]{label}#Sr
\ac*{label}[insert]#Sr
\ac*[options]{label}[insert]#Sr
\Ac*{label}#Sr
\Ac*[options]{label}#Sr
\Ac*{label}[insert]#Sr
\Ac*[options]{label}[insert]#Sr
\ac+{label}#Sr
\ac+[options]{label}#Sr
\ac+{label}[insert]#Sr
\ac+[options]{label}[insert]#Sr
\Ac+{label}#Sr
\Ac+[options]{label}#Sr
\Ac+{label}[insert]#Sr
\Ac+[options]{label}[insert]#Sr
\acp{label}#r
\acp[options%keyvals]{label}#r
\acp{label}[insert]#*r
\acp[options%keyvals]{label}[insert]#*r
\Acp{label}#r
\Acp[options%keyvals]{label}#r
\Acp{label}[insert]#*r
\Acp[options%keyvals]{label}[insert]#*r
\acp*{label}#Sr
\acp*[options]{label}#Sr
\acp*{label}[insert]#Sr
\acp*[options]{label}[insert]#Sr
\Acp*{label}#Sr
\Acp*[options]{label}#Sr
\Acp*{label}[insert]#Sr
\Acp*[options]{label}[insert]#Sr
\acp+{label}#Sr
\acp+[options]{label}#Sr
\acp+{label}[insert]#Sr
\acp+[options]{label}[insert]#Sr
\Acp+{label}#Sr
\Acp+[options]{label}#Sr
\Acp+{label}[insert]#Sr
\Acp+[options]{label}[insert]#Sr
#endif