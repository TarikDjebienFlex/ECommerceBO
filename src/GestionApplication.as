import mx.collections.ArrayCollection;
import mx.events.ListEvent;
import mx.rpc.events.ResultEvent;

public function listingDesCategories():void
{
	ResponderListeCategories.token = serviceEtudeCas.getCategories();
	ResponderListeCategories.addEventListener(ResultEvent.RESULT,ResultatListingDesCategoriesOK);
}

public function ResultatListingDesCategoriesOK(e:ResultEvent):void
{
	var xml:XML = new XML(e.result);
	trace(xml.toXMLString());
	tree_categorie.labelField ="@libelle";
	tree_categorie.dataProvider = xml.niveau1; 
}

public function getProduitsPourCategorie(e:ListEvent):void
{
	var idCategorie:int = e.currentTarget.selectedItem.@code;
	var niveau:String = e.currentTarget.selectedItem.@niveau;
	if(niveau == "2"){
		ResponderListeProduits.token = serviceEtudeCas.getProduitPourCategorie(idCategorie);
		ResponderListeProduits.addEventListener(ResultEvent.RESULT,ResultatListingDesProduitsOK);
	}
}
public function ResultatListingDesProduitsOK(e:ResultEvent):void
{
	var tableauObjetsDeTypeProduit:ArrayCollection = new ArrayCollection();
	tableauObjetsDeTypeProduit = e.target.lastResult;
	list_Produits.dataProvider = tableauObjetsDeTypeProduit;
}