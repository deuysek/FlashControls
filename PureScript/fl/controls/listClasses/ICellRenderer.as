// Copyright 2007. Adobe Systems Incorporated. All Rights Reserved.
package fl.controls.listClasses {
	import fl.controls.listClasses.ListData; 
	/**
     * The ICellRenderer interface provides the methods and properties that a cell renderer requires.
	 * All user defined cell renderers should implement this interface. All user defined cell renderers
	 * must extend either the UIComponent class or a subclass of the UIComponent class.
	 *
	 * @includeExample examples/ICellRendererExample.as -noswf
	 * @includeExample examples/MyRenderer.as -noswf
	 *
     * @see CellRenderer
     *
     * @langversion 3.0
     * @playerversion Flash 9.0.28.0
	 *  
	 *  @playerversion AIR 1.0
	 *  @productversion Flash CS3
	 */	
	public interface ICellRenderer {		
		/**
		 * Sets the y coordinate of the cell renderer
		 *
	 * @param y The y coordinate of the cell renderer.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		function set y(y:Number):void;

		/**
		 * Sets the x coordinate of the cell renderer
		 *
	 * @param x The x coordinate of the cell renderer.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		function set x(x:Number):void;
		
		/**
		 * Sets the size of the data according to the pixel values specified by the <code>width</code>
		 * and <code>height</code> parameters.
		 *
         * @param width The width to display the cell renderer at, in pixels.
		 *
         * @param height The height to display the cell renderer at, in pixels.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		function setSize(width:Number,height:Number):void;
		
		/**
         * Gets or sets the list properties that are applied to the cell--for example,
		 * the <code>index</code> and <code>selected</code> values. These list properties
		 * are automatically updated after the cell is invalidated.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		function get listData():ListData;

		/**
         * @private (setter)
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 */
		function set listData(value:ListData):void;		

		/**
         * Gets or sets an Object that represents the data that is 
		 * associated with a component. When this value is set, the 
		 * component data is stored and the containing component is 
		 * invalidated. The invalidated component is then automatically 
		 * redrawn.
		 *
		 * <p>The data property represents an object containing the item
		 * in the DataProvider that the cell represents.  Typically, the
		 * data property contains standard properties, depending on the
		 * component type. In CellRenderer in a List or ComboBox component
		 * the data contains a label, icon, and data properties; a TileList: a 
		 * label and a source property; a DataGrid cell contains values
		 * for each column.  The data property can also contain user-specified
		 * data relevant to the specific cell. Users can extend a CellRenderer
		 * for a component to utilize different properties of the data 
		 * in the rendering of the cell.</p>
		 *
		 * <p>Additionally, the <code>labelField</code>, <code>labelFunction</code>, 
		 * <code>iconField</code>, <code>iconFunction</code>, <code>sourceField</code>, 
		 * and <code>sourceFunction</code> elements can be used to specify which properties 
		 * are used to draw the label, icon, and source respectively.</p>
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		function get data():Object;

		/**
         * @private
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 */
		function set data(value:Object):void;
		
		/**
         * Gets or sets a Boolean value that indicates whether the
		 * current cell is selected. A value of <code>true</code> indicates
		 * that the current cell is selected; a value of <code>false</code> 
		 * indicates that it is not.
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
        function get selected():Boolean;

        /**
         * @param value Selected state (<code>true</code> or <code>false</code>).
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
         *  
         *  @playerversion AIR 1.0
         *  @productversion Flash CS3
         */
        function set selected(value:Boolean):void;
		
		/**
		 * Sets the current cell to a specific mouse state.  This method 
		 * is necessary for the DataGrid to set the mouse state on an entire
         * row when the user interacts with a single cell.
         *
         * @param state A string that specifies a mouse state, such as "up" or "over". 
         *
         * @langversion 3.0
         * @playerversion Flash 9.0.28.0
		 *  
		 *  @playerversion AIR 1.0
		 *  @productversion Flash CS3
		 */
		 function setMouseState(state:String):void;
	}
}
