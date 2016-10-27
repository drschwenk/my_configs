/*
    Add this file to $(ipython locate)/nbextensions/macro-cell.js
*/

define(["require"], function (require) {
    // Try to read JSON file specifying cell macros
		$.getJSON(require.toUrl("./macros.json"), function(data) {
				var pickTemplateLabel = $("<span></span>")
																.attr("class", "navbar-text");

				var pickTemplate = $("<select></select>").attr("id", "pick_template").attr("class", "form-control select-xs");
				$.each(data['cells'], function(key, cell) {
						var option = $("<option></option>")
												 .attr("value", cell['name'])
												 .text(cell['name'])
												 .attr("code", cell['lines'].join('\n'));
						pickTemplate.append(option);
				});

				$("div#maintoolbar-container").append(pickTemplateLabel);
				$("div#maintoolbar-container").append(pickTemplate);
		});


		function set_button(){
			var code = $("select#pick_template").find(":selected").attr("code");
			console.log(code)
			var new_cell = IPython.notebook.insert_cell_above('code');
			new_cell.set_text(code);
			new_cell.focus_cell();
	}
	var load_ipython_extension = function () {
		IPython.toolbar.add_buttons_group([
				{
						'label'   : 'Insert cell macro.',
						'icon'    : 'fa-coffee',
						'callback': set_button
				}
		]);
	}

    return {
        load_ipython_extension : load_ipython_extension,
    };
});
