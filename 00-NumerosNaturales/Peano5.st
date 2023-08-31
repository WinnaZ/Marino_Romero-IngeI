!classDefinition: #I category: 'Peano'!
DenotativeObject subclass: #I
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'I class' category: 'Peano'!
I class
	instanceVariableNames: 'next'!

!I class methodsFor: 'mensajes' stamp: 'Alexmary 8/28/2023 20:40:51'!
* aNaturalNumber
	^aNaturalNumber! !

!I class methodsFor: 'mensajes' stamp: 'Alex 8/24/2023 21:33:46'!
+ aNaturalNumber
	^ aNaturalNumber next.! !

!I class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 18:03:20'!
- aNaturalNumber
	^self error: self descripcionDeErrorDeNumerosNegativosNoSoportados.! !

!I class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 17:57:51'!
/ aNaturalNumber
	aNaturalNumber name = self name ifTrue: [^self].
	^self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor.! !

!I class methodsFor: 'mensajes' stamp: 'Alex 8/30/2023 11:25:44'!
< aNaturalNumber
	aNaturalNumber = self ifTrue: [^false].
	^true.! !

!I class methodsFor: 'mensajes' stamp: 'Alex 8/30/2023 11:25:49'!
> aNaturalNumber
	^false.! !

!I class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 17:57:30'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^'descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'.! !

!I class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 18:01:22'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	^'descripcionDeErrorDeNumerosNegativosNoSoportados'.! !

!I class methodsFor: 'mensajes' stamp: 'Alex 8/24/2023 20:51:50'!
next
	^ next ifNil: [next := self cloneNamed: self name, 'I'.] ifNotNil: next.! !

!I class methodsFor: 'mensajes' stamp: 'Alexmary 8/28/2023 22:01:24'!
substractTo: unNumero
	^unNumero previous! !


!I class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := II.! !


!classDefinition: #II category: 'Peano'!
DenotativeObject subclass: #II
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'II class' category: 'Peano'!
II class
	instanceVariableNames: 'next previous'!

!II class methodsFor: 'mensajes' stamp: 'Alexmary 8/28/2023 20:44:18'!
* aNaturalNumber
	^ aNaturalNumber + (self previous * aNaturalNumber).! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/24/2023 21:40:20'!
+ unNatural
	^(self previous + unNatural next).! !

!II class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 18:07:35'!
- aNaturalNumber
	^aNaturalNumber substractTo: self! !

!II class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 17:55:58'!
/ aNaturalNumber
	(aNaturalNumber > self) ifTrue: [^self error: self descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor].
	aNaturalNumber name = I name ifTrue: [^self].
	^ self naturalDivision: aNaturalNumber.! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/30/2023 11:25:33'!
< aNaturalNumber
	aNaturalNumber = self ifTrue: [^false].
	aNaturalNumber name = I name ifTrue: [^false].
	^((self previous) < (aNaturalNumber previous))! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/30/2023 11:25:22'!
> aNaturalNumber
	aNaturalNumber = self ifTrue: [^false].
	aNaturalNumber name = I name ifTrue: [^true].
	^((self previous) > (aNaturalNumber previous))! !

!II class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 17:55:38'!
descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
	^'descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor'.! !

!II class methodsFor: 'mensajes' stamp: 'AGRM 8/31/2023 18:00:11'!
descripcionDeErrorDeNumerosNegativosNoSoportados
	^'descripcionDeErrorDeNumerosNegativosNoSoportados'.! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/30/2023 11:26:26'!
naturalDivision: aNaturalNumber
	aNaturalNumber = self ifTrue: [^I].
	(self < aNaturalNumber) ifTrue: [^self].
	((self - aNaturalNumber) < aNaturalNumber) ifTrue: [^I].
	^ ((self - aNaturalNumber) naturalDivision: aNaturalNumber) + I! !

!II class methodsFor: 'mensajes' stamp: 'Alexmary 8/28/2023 21:11:12'!
next
	next ifNotNil: [^next].
	next := II createChildNamed: self name, 'I'.
	next previous: self.
	^ next.! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/24/2023 21:24:24'!
previous
	^previous.! !

!II class methodsFor: 'mensajes' stamp: 'Alex 8/24/2023 21:27:18'!
previous: aNaturalNumber
	previous := aNaturalNumber.! !

!II class methodsFor: 'mensajes' stamp: 'Alexmary 8/28/2023 22:01:41'!
substractTo: unNumero
	^unNumero previous - self previous
	! !


!II class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := III.
	previous := I.! !


!classDefinition: #III category: 'Peano'!
II subclass: #III
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'III class' category: 'Peano'!
III class
	instanceVariableNames: ''!

!III class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIII.
	previous := II.! !


!classDefinition: #IIII category: 'Peano'!
II subclass: #IIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIII class' category: 'Peano'!
IIII class
	instanceVariableNames: ''!

!IIII class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIII.
	previous := III.! !


!classDefinition: #IIIII category: 'Peano'!
II subclass: #IIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIII class' category: 'Peano'!
IIIII class
	instanceVariableNames: ''!

!IIIII class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := IIIIII.
	previous := IIII.! !


!classDefinition: #IIIIII category: 'Peano'!
II subclass: #IIIIII
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IIIIII class' category: 'Peano'!
IIIIII class
	instanceVariableNames: ''!

!IIIIII class methodsFor: '--** private fileout/in **--' stamp: 'AGRM 8/31/2023 18:13:55'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	next := nil.
	previous := IIIII.! !


!classDefinition: #NumerosNaturalesTest category: 'Peano'!
DenotativeObject subclass: #NumerosNaturalesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Peano'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NumerosNaturalesTest class' category: 'Peano'!
NumerosNaturalesTest class
	instanceVariableNames: ''!

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 12:51:26'!
test01UnoMasUnSumandoEsElProximoDelSumando

	Assert that: I + II isEqualTo: II next.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:11:40'!
test02NumerosMayoresaUnoSumanBien

	Assert that: II + II isEqualTo: IIII.
! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:12:19'!
test03UnNumeroMenosUnoEsElPrevioDelNumero

	Assert that: II - I isEqualTo: II previous.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:15:11'!
test04NumerosMayoresaUnoRestanBien

	Assert that: IIII - II isEqualTo: II.
! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 12:51:02'!
test05RestaNoSoportaNumerosNegativos

	Assert should: [ I - II ] signal: Error withDescription: I descripcionDeErrorDeNumerosNegativosNoSoportados.
! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:15:53'!
test06UnNumeroMultiplicadoPorUnoEsIgualAlNumero

	Assert that: II * I isEqualTo: II.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:16:23'!
test07NumerosMayoresaUnoMultiplicanBien

	Assert that: II * II isEqualTo: IIII.
! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:16:46'!
test08UnoMultiplicadoUnoEsIgualAUno

	Assert that: I * I isEqualTo: I.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:01:58'!
test09NumerosMayoresaUnoDividenBien

	Assert that: IIII / II isEqualTo: II.
! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:17:28'!
test10UnNumeroDivididoUnoEsIgualAlNumero

	Assert that: II / I isEqualTo: II.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:17:38'!
test11UnoDivididoUnoEsIgualAUno

	Assert that: I / I isEqualTo: I.! !

!NumerosNaturalesTest class methodsFor: 'tests' stamp: 'ARM 3/26/2018 13:17:59'!
test12DivisionNoSoportaDividirPorUnNumeroMayor

	Assert should: [ III /  IIII ] signal: Error withDescription: II descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor.
	
	Assert should: [ I /  II] signal: Error withDescription: I descripcionDeErrorDeNoSePuedeDividirPorUnNumeroMayor
! !

I initializeAfterFileIn!
II initializeAfterFileIn!
III initializeAfterFileIn!
IIII initializeAfterFileIn!
IIIII initializeAfterFileIn!
IIIIII initializeAfterFileIn!