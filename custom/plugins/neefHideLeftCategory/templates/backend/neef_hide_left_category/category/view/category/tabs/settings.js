//{block name="backend/category/view/tabs/settings" append}
Ext.override(Shopware.apps.Category.view.category.tabs.Settings, {
    getSettingsCheckboxes: function() {
        var me = this,
            items = me.callParent(arguments);

        items = Ext.Array.insert(items, 2, [{
            boxLabel: 'NICHT in linker Navigation anzeigen',
            name:'hideLeft',
            dataIndex:'hideLeft'
        }]);

        return items;
    }
});
//{/block}