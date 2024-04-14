extends Node
#func goto(path):
	#var loader=ResourceLoader.load_threaded_get(path)
	#while true:
		#var err=loader.poll()
		#if err==ERR_FILE_EOF:
			#var get_loader=loader.get_resource()
			#get_tree().get_root().call_deferred("add_child",loader.instance())
			#break
			#pass
		#if err==OK:
			#var progres=float(loader.get_stage())/loader.get_stage_count()
			#print(progres)
	#pass
