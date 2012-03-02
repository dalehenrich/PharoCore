
Object subclass: #NaturalLanguageFormTranslator
	instanceVariableNames: 'id generics'
	classVariableNames: 'CachedTranslations'
	poolDictionaries: ''
	category: 'System-Localization'!

!NaturalLanguageFormTranslator commentStamp: 'LaurentLaffont 3/4/2011 22:44' prior: 0!
Provides support for looking up Forms by name for presentation in the UI.
Different forms can be registered for a name for different locales allowing
images presented in the UI to be localised.

Typically used where images contain language dependent text.

E.g.

buttonForm := (NaturalLanguageFormTranslator localeID: Locale current localeID)
  translate: 'submit button'


Form translations are added like so:

(NaturalLanguageFormTranslator isoLanguage: 'en' isoCountry: 'gb')
  name: 'submit button' form: aForm!
