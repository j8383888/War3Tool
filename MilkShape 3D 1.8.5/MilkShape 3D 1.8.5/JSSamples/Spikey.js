//////////////////////////////////////////////////////////////////////////////
// Pikey.js
// Sample script for the msToolJS plugin. Converts each triangle into a spike.
// By Ulf Öhlén

ofs = prompt("Enter spike offset", 10,  "Offset");
ofs = ofs*1;

if(ofs!=null)
{
	for(i=0; i<model.meshes.length; i++)
	{
		m = model.meshes[i];
		numTriangles = m.triangles.length;
		for(j=0; j<numTriangles; j++)
		{
			t = m.triangles[j]; // current triangle

			// Get the triangle's 3 vertices
			v0 = m.vertices[t.vertexIndices[0]].vertex;
			v1 = m.vertices[t.vertexIndices[1]].vertex;
			v2 = m.vertices[t.vertexIndices[2]].vertex;

			// Get triangle normal
			var c1 = new Vec3(v2.x-v0.x, v2.y-v0.y, v2.z-v0.z);
			var c2 = new Vec3(v2.x-v1.x, v2.y-v1.y, v2.z-v1.z);
			n = Vec3.crossProd(c1, c2);
			n.normalize(ofs);

			// Get triangle midpoint and translate along the normal
			midp = getMidpoint(v0, v1, v2);
			midp.x+= n.x;
			midp.y+= n.y;
			midp.z+= n.z;

			// Add a new vertex at the translated midpoint
			vIdx = m.vertices.length; // Vertex index
			nIdx = m.normals.length; // Normal index			
			m.vertices.push(new Vertex(midp.x, midp.y, midp.z)); 
			m.normals.push(new Vec3(n.x, n.y, n.z));
			
			// Add two new triangles
			m.triangles.push(new Triangle([t.vertexIndices[0], t.vertexIndices[1], vIdx], [t.normalIndices[0], t.normalIndices[1], nIdx]));
			m.triangles.push(new Triangle([t.vertexIndices[2], t.vertexIndices[0], vIdx], [t.normalIndices[2], t.normalIndices[0], nIdx]));

			// Redirect the original triangle's first vertex
			t.vertexIndices[0] = vIdx;
		}
	}
}

function getMidpoint(p0, p1, p2)
{
	var v = new Vec3();
	v.x = (p0.x + p1.x + p2.x)/3;
	v.y = (p0.y + p1.y + p2.y)/3;
	v.z = (p0.z + p1.z + p2.z)/3;
	return v;
}
