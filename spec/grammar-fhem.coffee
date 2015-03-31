describe "fhem grammar", ->
	grammar = null

	beforeEach ->
		waitsForPromise ->
			atom.packages.activatePackage("language-fhem")

	runs ->
		grammar = atom.grammars.grammarForScopeName("source.fhem")

	it "parses the grammar", ->
		expect(grammar).toBeDefined()
		expect(grammar.scopeName).toBe "source.fhem"
