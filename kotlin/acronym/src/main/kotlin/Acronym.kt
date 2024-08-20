object Acronym {
    fun generate(phrase: String) : String {
        var acronym = ""
        val splitValue = phrase.split(" ", "-", "_", ",").filter {it.isNotBlank()}
        for (word in splitValue) {
            acronym += word[0].uppercase()
        }
        return acronym
    }
}