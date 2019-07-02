//////////////////////////////////////////////////////////////////////////////
// Report.js
// Sample script for the msToolJS plugin. Writes a report on the model to a file.
// By Ulf Öhlén

// Get a file name
fileName = showSaveDlg("Select output file", "*.txt|*.txt|*.*|*.*||")

if(fileName != null)
{
	// Open a file for output
	f = new File(fileName, File.OUT | File.TRUNC);

	// Start reporting...
	for(i=0; i<model.meshes.length; i++)
	{
		mesh = model.meshes[i];
		f.write("meshes[" + i + "]\n");
		f.write("\tflags = " + mesh.flags + "\n");
		f.write("\tname = " + mesh.name + "\n");
		f.write("\tmaterialIndex = " + mesh.materialIndex + "\n");

		f.write("\tvertices\n");
		for(j=0; j<mesh.vertices.length; j++)
		{
			vertex = mesh.vertices[j];
			f.write("\t\tvertices[", j, "]\n");
			f.write("\t\t\tflags = " + vertex.flags + "\n");
			f.write("\t\t\tvertex = " + vertex.vertex + "\n");
			f.write("\t\t\tu = " + vertex.u + "\n");
			f.write("\t\t\tv = " + vertex.v + "\n");
			f.write("\t\t\tboneIndex = " + vertex.boneIndex + "\n");
		}

		f.write("\tnormals\n");
		for(j=0; j<mesh.normals.length; j++)
		{
			normal = mesh.normals[j];
			f.write("\t\tnormals[", j, "] = " + normal + "\n");
		}

		f.write("\ttriangles\n");
		for(j=0; j<mesh.triangles.length; j++)
		{
			triangle = mesh.triangles[j];
			f.write("\t\ttriangles[", j, "]\n");
			f.write("\t\t\tflags = " + triangle.flags + "\n");
			f.write("\t\t\tvertexIndices = " + triangle.vertexIndices + "\n");
			f.write("\t\t\tnormalIndices = " + triangle.normalIndices + "\n");
			f.write("\t\t\tnormal = " + triangle.normal + "\n");
			f.write("\t\t\tsmoothingGroup = " + triangle.smoothingGroup + "\n");
		}
	}

	for(i=0; i<model.materials.length; i++)
	{
		material = model.materials[i];
		f.write("materials[" + i + "]\n");
		f.write("\tflags = " + material.flags + "\n");
		f.write("\tname = " + material.name + "\n");
		f.write("\tambient = " + material.ambient + "\n");
		f.write("\tdiffuse = " + material.diffuse + "\n");
		f.write("\tspecular = " + material.specular + "\n");
		f.write("\temissive = " + material.emissive + "\n");
		f.write("\tshininess = " + material.shininess + "\n");
		f.write("\ttransparency = " + material.transparency + "\n");
		f.write("\tdiffuseTexture = " + material.diffuseTexture + "\n");
		f.write("\talphaTexture = " + material.alphaTexture + "\n");
		f.write("\tnName = " + material.nName + "\n");
	}

	for(i=0; i<model.bones.length; i++)
	{
		bone = model.bones[i];
		f.write("bones[" + i + "]\n");
		f.write("\tflags = " + bone.flags + "\n");
		f.write("\tname = " + bone.name + "\n");
		f.write("\tparentName = " + bone.parentName + "\n");
		f.write("\tposition = " + bone.position + "\n");
		f.write("\trotation = " + bone.rotation + "\n");

		f.write("\tpositionKeys\n");
		for(j=0; j<bone.positionKeys.length; j++)
		{
			key = bone.positionKeys[j];
			f.write("\t\t\tpositionKeys[", j, "]\n");
			f.write("\t\t\ttime = " + key.time + "\n");
			f.write("\t\t\tposition = " + key.position + "\n");
		}

		f.write("\trotationKeys\n");
		for(j=0; j<bone.rotationKeys.length; j++)
		{
			key = bone.rotationKeys[j];
			f.write("\t\trotationKeys[", j, "]\n");
			f.write("\t\t\ttime = " + key.time + "\n");
			f.write("\t\t\trotation = " + key.rotation + "\n");
		}
	}

	f.close();
}