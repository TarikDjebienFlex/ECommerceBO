/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Produit.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Produit extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("Produit") == null)
            {
                flash.net.registerClassAlias("Produit", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("Produit", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ProduitEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_Prix : String;
    private var _internal_Description : String;
    private var _internal_Image : String;
    private var _internal_Categorie : String;
    private var _internal_Code : String;
    private var _internal_Libelle : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Produit()
    {
        _model = new _ProduitEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get Prix() : String
    {
        return _internal_Prix;
    }

    [Bindable(event="propertyChange")]
    public function get Description() : String
    {
        return _internal_Description;
    }

    [Bindable(event="propertyChange")]
    public function get Image() : String
    {
        return _internal_Image;
    }

    [Bindable(event="propertyChange")]
    public function get Categorie() : String
    {
        return _internal_Categorie;
    }

    [Bindable(event="propertyChange")]
    public function get Code() : String
    {
        return _internal_Code;
    }

    [Bindable(event="propertyChange")]
    public function get Libelle() : String
    {
        return _internal_Libelle;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set Prix(value:String) : void
    {
        var oldValue:String = _internal_Prix;
        if (oldValue !== value)
        {
            _internal_Prix = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Prix", oldValue, _internal_Prix));
        }
    }

    public function set Description(value:String) : void
    {
        var oldValue:String = _internal_Description;
        if (oldValue !== value)
        {
            _internal_Description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Description", oldValue, _internal_Description));
        }
    }

    public function set Image(value:String) : void
    {
        var oldValue:String = _internal_Image;
        if (oldValue !== value)
        {
            _internal_Image = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Image", oldValue, _internal_Image));
        }
    }

    public function set Categorie(value:String) : void
    {
        var oldValue:String = _internal_Categorie;
        if (oldValue !== value)
        {
            _internal_Categorie = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Categorie", oldValue, _internal_Categorie));
        }
    }

    public function set Code(value:String) : void
    {
        var oldValue:String = _internal_Code;
        if (oldValue !== value)
        {
            _internal_Code = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Code", oldValue, _internal_Code));
        }
    }

    public function set Libelle(value:String) : void
    {
        var oldValue:String = _internal_Libelle;
        if (oldValue !== value)
        {
            _internal_Libelle = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Libelle", oldValue, _internal_Libelle));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _ProduitEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ProduitEntityMetadata) : void
    {
        var oldValue : _ProduitEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
