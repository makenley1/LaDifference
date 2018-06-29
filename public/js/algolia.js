(function(){
    var client = algoliasearch('ERQ48T1LPO', '921f2843c37134c7505f5cfd0d720a2a');
    var index = client.initIndex('product');
    //initialize autocomplete on search input (ID selector must match)
    autocomplete('#aa-search-input', { hint: false }, {
        source: autocomplete.sources.hits(index, {hitsPerPage: 10}),
        //value to be displayed in input control after user's suggestion selection
        displayKey: 'name',
        //hash of templates used when rendering dataset
        templates: {
            //'suggestion' templating function used to render a single suggestion
            suggestion: function(suggestion) {
                const markup = `
                    <div class="algolia-result">
                        <span>${suggestion._highlightResult.nom.value}</span>
                        <span>HTG ${suggestion.montant}</span>
                    </div>

                    <div class="algolia-details">
                        <span>${suggestion._highlightResult.adresse.value}</span>
                    </div>
                `;

                return markup;
            },
            empty: function (result) {
                return 'Desolée, Aucun result trouvé pour "' + result.query + '"';
            }
        }
    }).on('autocomplete:selected', function (event, suggestion, dataset){
        window.location.href = window.location.origin + '/hotels/' + suggestion.slug;
    });
})();