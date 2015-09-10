 <?php

 $app->group('/codigos', function () use ($app)	{

 	/*
 		0)
 		/permiso get ALL
 	*/

	$app->get('/', function () use ($app) {

		/*Consulta a la base*/
		$estado = ORM::for_table('json_estados')
			->select('json_estados.*')
			->find_many();

			$response = array();	
			//para cada estado
			foreach ($estado as $key => $value) {

				$municipios = ORM::for_table('json_municipios')
				->select('json_municipios.*')
				->where('id_estado', $value->id)
				->find_many();


				foreach ($municipios as $key => $value2) {
					$municipios = array(
						'id'     => $value2->id,
						'nombre' => $value2->municipio,
					);
					$add[] = $municipios;
				}


				$estado = array(
					'id'     => $value->id,
					'entidad' => $value->estado,
					'municipios' => $add
				);
				unset($add);
				$response[] = $estado;

			}

		/*Respuesta del servicio*/
		$app->response->setBody(json_encode($response));			
		$app->response->setStatus(200);
		$app->stop();
		});
	});

	/*Respuesta del post*/
	$app->options('/', function () use ($app){
	 	$app->response->setStatus(200);
	 	$app->response->setBody(json_encode(array('message' => 'ok')));
	});

?>
