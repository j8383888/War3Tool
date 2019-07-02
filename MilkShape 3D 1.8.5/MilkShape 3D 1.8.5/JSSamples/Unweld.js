//////////////////////////////////////////////////////////////////////////////
// Unweld.js
// Sample script for the msToolJS plugin. Unwelds all vertices in a model.
// Before running this script, make sure 'Auto Smooth' is selected!
// By Ulf Öhlén

for(im=0; im<model.meshes.length; im++)
{
	var mesh = model.meshes[im];
	var oldVx = null;
	var newVx = null;
	var oldVxCount = mesh.vertices.length; // Original vertex count

	write("Unwelding mesh " + mesh.name + " ... ");

	for(it=0; it<mesh.triangles.length; it++)
	{
		tri = mesh.triangles[it];
		// For each triangle, add 3 new vertices and remap the triangle's vertex indices
		for(i=0; i<3; i++)
		{
			oldVx = mesh.vertices[tri.vertexIndices[i]];
			newVx = new Vertex(oldVx.vertex.x, oldVx.vertex.y, oldVx.vertex.z, oldVx.u, oldVx.v, oldVx.boneIndex, oldVx.flags);
			tri.vertexIndices[i] = mesh.vertices.length-oldVxCount;
			mesh.vertices.push(newVx);
		}
	}
	
	if(mesh.vertices.length>0)
		mesh.vertices.erase(0, oldVxCount); // Delete old vertices
	write("" + mesh.vertices.length + " vertices OK\n");
}