/// @arg instance_id
var _id = argument0;
return array_find_index(instance_key(_id), global.destroyed) != -1;			// la funziona ritorna l'indice dell'array o se non lo trova ritorna -1 => se trova l'oggetto ritorna qualcosa diverso da -1 e pertanto ritorna true
