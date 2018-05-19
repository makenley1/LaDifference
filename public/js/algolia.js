(function(){
    var client = algoliasearch('O4QV5LEODL', 'ebadda241ac37d47c96e3cb39609e071');
    var index = client.initIndex('products');
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
                        <span>$${(suggestion.montant / 100).toFixed(2)}</span>
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