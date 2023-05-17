/*
function convertir_grid(grid)
{
    grid = argument0;
	var grafo = ds_map_create();
    var direcciones = ds_list_create();
    ds_list_add(direcciones, [1, 0]);
    ds_list_add(direcciones, [-1, 0]);
    ds_list_add(direcciones, [0, 1]);
    ds_list_add(direcciones, [0, -1]);

    for (var j = 0; j < array_height_2d(grid); j++)
    {
        for (var i = 0; i < array_width_2d(grid); i++)
        {
            var peso = grid[j][i];
            if (peso != "Inf")
            {
                var nodos_vecinos = ds_list_create();
                for (var d = 0; d < ds_list_size(direcciones); d++)
                {
                    var x = ds_list_find_value(direcciones, d, 0);
                    var y = ds_list_find_value(direcciones, d, 1);
                    var newx = x + i;
                    var newy = y + j;
                    if (newx >= 0 && newx < array_width_2d(grid) && newy >= 0 && newy < array_height_2d(grid) && grid[newy][newx] != "Inf")
                    {
                        var nodo_vecino = ds_list_create();
                        ds_list_add(nodo_vecino, [newx, newy]);
                        ds_list_add(nodo_vecino, grid[newy][newx]);
                        ds_list_add(nodos_vecinos, nodo_vecino);
                    }
                }
                ds_map_add(grafo, [i, j], nodos_vecinos);
            }
        }
    }
    return grafo;
}