!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'HernanWilkinson 5/7/2012 11:30'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:29:55'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:01'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:09'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!OOStackTest methodsFor: 'test' stamp: 'NR 9/16/2021 17:40:17'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'firstSomething'.
	secondPushedObject := 'secondSomething'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:20'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:24'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: stack size = 1.
	stack top.
	self assert: stack size = 1.
	! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:26'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'NR 5/13/2020 13:30:31'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'HAW 4/14/2017 22:48:44'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = OOStack stackEmptyErrorDescription ]
		
! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'zm 9/18/2023 17:17:09'!
test01SentenceFinderFindsResultCorrectly

	| stack prefijo result sentenceFinder |
	
	stack := OOStack new.
	
	stack push: 'wier is coming'	.
	stack push: 'Winter is here'.
	prefijo := 'Win'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	result := sentenceFinder find: prefijo in: stack.
	
	self assert: result includes: 'Winter is here'.! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'AG 9/18/2023 00:07:29'!
test02PrefixNotFoundInAnySentence

	| stack prefijo result sentenceFinder |
	
	stack := OOStack new.
	
	stack push: 'summer is coming'	.
	stack push: 'winter is here'.
	prefijo := 'Win'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	result := sentenceFinder find: prefijo in: stack.
	
	self assert: result isEmpty! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'AG 9/18/2023 00:09:18'!
test03PrefixIsFoundInSentence

	| stack prefijo result sentenceFinder |
	
	stack := OOStack new.
	
	stack push: 'Winter is here'	.
	prefijo := 'Winter'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	result := sentenceFinder find: prefijo in: stack.
	
	self deny: result isEmpty! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'AG 9/18/2023 00:13:52'!
test04SentenceFinderByPrefixCanBeUsedByTwoDifferentStacks

	| stackWinter stackSummer prefijo resultWinter sentenceFinder resultSummer|
	
	stackWinter := OOStack new.
	stackSummer := OOStack new.
	
	stackWinter push: 'Winter is here'	.
	stackSummer push: 'Summer is here'	.
	prefijo := 'Winter'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	resultWinter := sentenceFinder find: prefijo in: stackWinter.
	resultSummer := sentenceFinder find: prefijo in: stackSummer.
	
	self deny: resultWinter isEmpty.
	self assert: resultSummer isEmpty! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'AG 9/18/2023 00:26:35'!
test05CanNotCheckPrefixWhenThereAreNoObjectsInTheStack

	| stack  sentenceFinder prefix result|
	
	stack := OOStack new.
	sentenceFinder := SentenceFinderByPrefix new.
	prefix := 'aPrefijo'.
	result := sentenceFinder find: prefix in: stack.
	self assert: result isEmpty.

		! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'zm 9/18/2023 18:53:17'!
test06CanNotFindSentendesWhenPrefixIsEmpty

	| stack  sentencesFinder|
	
	stack := OOStack new.
	stack push: 'sentence'.
	sentencesFinder := SentenceFinderByPrefix new.
	self
		should: [ sentencesFinder find: '' in: stack ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText = Prefijo prefixEmptyErrorDescription ]
! !

!SentenceFinderByPrefixTest methodsFor: 'test' stamp: 'zm 9/18/2023 18:53:21'!
test07StackRemainsTheSame

	| stack prefijo sentenceFinder element elementCopy stackCopy |
	
	stack := OOStack new.

	stack push: 'wnter1'	.
	stack push: 'wnter2'.
	stack push: 'wnter3'.
	stack push: 'wnter4'.
	
	stackCopy := OOStack new.

	stackCopy push: 'wnter1'	.
	stackCopy push: 'wnter2'.
	stackCopy push: 'wnter3'.
	stackCopy push: 'wnter4'.
	
	sentenceFinder := SentenceFinderByPrefix new.
	prefijo := 'Win'.
	
	
	sentenceFinder find: prefijo in: stack.
	
	[stack isEmpty not] whileTrue: [
		elementCopy := stackCopy pop.
	    	element := stack pop.
    		self assert: element = elementCopy
   	].! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'initialization' stamp: 'zm 9/17/2023 18:10:15'!
initialize
	^Base new.
	
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'NR 9/14/2023 08:12:21'!
stackEmptyErrorDescription
	
	^ 'stack is empty!!!!!!'! !


!classDefinition: #Base category: 'Stack-Exercise'!
OOStack subclass: #Base
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 18:06:27'!
isEmpty
	^next isEmpty! !

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:06:11'!
pop
	^next pop! !

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:18:22'!
popeate
	^OOStack error: OOStack stackEmptyErrorDescription ! !

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 16:22:21'!
push: anElement
	next push: anElement! !

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:29:28'!
size
	^next size! !

!Base methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:26:32'!
top
	^next top! !


!Base methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:02:43'!
getNext
	^next! !

!Base methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:34:10'!
getValue
	^OOStack error: OOStack stackEmptyErrorDescription ! !

!Base methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:03:57'!
setNext: anElement
	next := anElement 
! !


!Base methodsFor: 'initialization' stamp: 'zm 9/17/2023 18:45:31'!
initialize
	next := Tope with: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Base class' category: 'Stack-Exercise'!
Base class
	instanceVariableNames: ''!

!Base class methodsFor: 'as yet unclassified' stamp: 'zm 9/17/2023 18:48:16'!
with: anElement
	^Base new initializeWith: anElement! !


!classDefinition: #Elemento category: 'Stack-Exercise'!
OOStack subclass: #Elemento
	instanceVariableNames: 'info next prev'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Elemento methodsFor: 'initialization' stamp: 'zm 9/17/2023 18:52:11'!
initialize! !

!Elemento methodsFor: 'initialization' stamp: 'zm 9/17/2023 19:00:54'!
with: anElement despuesDe: prevElement

	prev := prevElement .
	info := anElement. 
	next := prevElement getNext! !


!Elemento methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:01:19'!
getNext
	^next! !

!Elemento methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:33:52'!
getValue
	^info! !

!Elemento methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 18:57:23'!
setNext: anElement
	next := anElement 
! !


!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 18:05:17'!
isEmpty
	^false
		

! !

!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:14:28'!
pop
	^next pop
! !

!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:25:30'!
popeate
	prev setNext: next.
	next setUltimo: prev.
	^ info
! !

!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 18:00:34'!
push: anElement
	next push: anElement .
	

! !

!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:29:52'!
size
	^ 1 + next size
! !

!Elemento methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:26:49'!
top
	^next top
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Elemento class' category: 'Stack-Exercise'!
Elemento class
	instanceVariableNames: ''!

!Elemento class methodsFor: 'instance creation' stamp: 'zm 9/17/2023 18:51:03'!
with: anElement despuesDe: prevElement

	^Elemento new with: anElement despuesDe: prevElement
! !


!classDefinition: #Tope category: 'Stack-Exercise'!
OOStack subclass: #Tope
	instanceVariableNames: 'ultimo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Tope methodsFor: 'operaciones' stamp: 'zm 9/17/2023 18:06:51'!
isEmpty
	^true! !

!Tope methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:18:48'!
pop
	^ultimo popeate! !

!Tope methodsFor: 'operaciones' stamp: 'zm 9/17/2023 18:56:08'!
push: anElement
	|newElement|
	newElement := Elemento with: anElement despuesDe: ultimo.
	ultimo setNext: newElement.
	ultimo := newElement.


	! !

!Tope methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:30:07'!
size
	^0! !

!Tope methodsFor: 'operaciones' stamp: 'zm 9/17/2023 19:34:28'!
top
	^ultimo getValue! !


!Tope methodsFor: 'initialization' stamp: 'zm 9/17/2023 16:45:54'!
initialize


	! !

!Tope methodsFor: 'initialization' stamp: 'zm 9/17/2023 18:36:41'!
initializeWithUltimo: aPrev
	ultimo := aPrev


	! !


!Tope methodsFor: 'gettersAndSetters' stamp: 'zm 9/17/2023 19:22:11'!
setUltimo: nuevoUltimo
	ultimo := nuevoUltimo 


	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Tope class' category: 'Stack-Exercise'!
Tope class
	instanceVariableNames: ''!

!Tope class methodsFor: 'instance creation' stamp: 'zm 9/17/2023 18:40:29'!
initializeWithUltimo: aPrev
	! !

!Tope class methodsFor: 'instance creation' stamp: 'zm 9/17/2023 18:49:49'!
with: ultimo
	^Tope new initializeWithUltimo: ultimo

	
	! !


!classDefinition: #Prefijo category: 'Stack-Exercise'!
Object subclass: #Prefijo
	instanceVariableNames: 'prefijo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!Prefijo methodsFor: 'initialization' stamp: 'zm 9/18/2023 19:02:39'!
initializeWith: unPrefijo
	(unPrefijo isEmpty or: [unPrefijo includesSubString: ' ']) ifTrue: [^EmptyPrefijo new].
	^ValidPrefijo new initializeWith: unPrefijo.! !

!Prefijo methodsFor: 'initialization' stamp: 'zm 9/18/2023 19:11:40'!
prefijo
	^prefijo ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Prefijo class' category: 'Stack-Exercise'!
Prefijo class
	instanceVariableNames: ''!

!Prefijo class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 18:54:57'!
initializeWith: unPrefijo
	(unPrefijo isEmpty or: [unPrefijo includesSubString: ' ']) ifTrue: [^EmptyPrefijo new].
	^ValidPrefijo new initializeWith: unPrefijo! !

!Prefijo class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 18:50:28'!
prefixEmptyErrorDescription
	^'Prefijo es vacio o contiene vacio'! !


!classDefinition: #EmptyPrefijo category: 'Stack-Exercise'!
Prefijo subclass: #EmptyPrefijo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!EmptyPrefijo methodsFor: 'evaluating' stamp: 'zm 9/18/2023 19:18:44'!
esPrefijoDe: aSentence
	^self error: Prefijo prefixEmptyErrorDescription.! !



!classDefinition: #ValidPrefijo category: 'Stack-Exercise'!
Prefijo subclass: #ValidPrefijo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!ValidPrefijo methodsFor: 'evaluating' stamp: 'zm 9/18/2023 19:19:05'!
esPrefijoDe: aSentence
	^(aSentence findString: prefijo startingAt:  0 caseSensitive: true) > 0! !


!ValidPrefijo methodsFor: 'initialization' stamp: 'zm 9/18/2023 18:51:45'!
initializeWith: aPrefijo
	prefijo:= aPrefijo .! !


!classDefinition: #Sentence category: 'Stack-Exercise'!
Object subclass: #Sentence
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Sentence class' category: 'Stack-Exercise'!
Sentence class
	instanceVariableNames: ''!

!Sentence class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 19:20:20'!
initializeWith: aSentence and: aPrefijo
	(aPrefijo esPrefijoDe: aSentence)ifTrue: [^ValidSentence initializeWith: aSentence .].
	^InvalidSentence new.! !


!classDefinition: #InvalidSentence category: 'Stack-Exercise'!
Sentence subclass: #InvalidSentence
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!InvalidSentence methodsFor: 'initialization' stamp: 'zm 9/18/2023 18:20:20'!
addtoValidList: list
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvalidSentence class' category: 'Stack-Exercise'!
InvalidSentence class
	instanceVariableNames: ''!

!InvalidSentence class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 18:24:53'!
initializeWith: aSentence
	^self new initializeWith: aSentence ! !

!InvalidSentence class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 18:26:13'!
initializeWith: aSentence and: aList
	^self new initializeWith: aSentence and: aList.! !


!classDefinition: #ValidSentence category: 'Stack-Exercise'!
Sentence subclass: #ValidSentence
	instanceVariableNames: 'validList value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!ValidSentence methodsFor: 'initialization' stamp: 'zm 9/18/2023 18:31:30'!
addtoValidList: list
	list add: value.! !

!ValidSentence methodsFor: 'initialization' stamp: 'zm 9/18/2023 17:58:46'!
initialize
	validList := OrderedCollection new.! !

!ValidSentence methodsFor: 'initialization' stamp: 'zm 9/18/2023 18:31:22'!
initializeWith: aSentence
	value := aSentence.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ValidSentence class' category: 'Stack-Exercise'!
ValidSentence class
	instanceVariableNames: ''!

!ValidSentence class methodsFor: 'as yet unclassified' stamp: 'zm 9/18/2023 18:24:25'!
initializeWith: aSentence
	^self new initializeWith: aSentence ! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'listaValida backupStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'finder' stamp: 'zm 9/18/2023 19:08:47'!
find: aPrefix in: aStack
	|prefix|
	prefix := Prefijo new initializeWith: aPrefix.
	backupStack := OOStack new.
	listaValida := OrderedCollection new.

	[aStack isEmpty not] whileTrue: [
		self findPrefix: prefix from: aStack
		].
	self remakeStack: aStack .
	^listaValida .! !

!SentenceFinderByPrefix methodsFor: 'finder' stamp: 'zm 9/18/2023 18:27:28'!
findPrefix: aPrefix from: aStack 
	| sentence  element|
	element := aStack pop.
	sentence := Sentence initializeWith: element and: aPrefix.
	sentence addtoValidList: listaValida. 

	backupStack push: element.
	
! !

!SentenceFinderByPrefix methodsFor: 'finder' stamp: 'zm 9/18/2023 18:36:21'!
remakeStack: aStack
	|sentence|
	[backupStack isEmpty not] whileTrue: [
		sentence:= backupStack pop.
		aStack push: sentence.
		].
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'class initialization' stamp: 'AG 9/17/2023 22:29:11'!
initialize
	^self class new initialize! !


!SentenceFinderByPrefix class methodsFor: 'error descriptions' stamp: 'AG 9/18/2023 00:38:28'!
prefixEmptyErrorDescription
	
	^ 'prefix is empty!!!!!!'! !

SentenceFinderByPrefix initialize!