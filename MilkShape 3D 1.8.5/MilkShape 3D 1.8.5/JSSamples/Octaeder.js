//////////////////////////////////////////////////////////////////////////////
// Octaeder.js
// Sample script for the msToolJS plugin. Creates a new octaeder mesh.
// By Ulf Öhlén

r = 10; // Radius

// Create a new mesh
m = model.meshes.push(new Mesh("Octaeder"));

// Vertices
m.vertices.push(new Vertex( 0,-r, 0));
m.vertices.push(new Vertex( 0, r, 0));
m.vertices.push(new Vertex(-r, 0, 0));
m.vertices.push(new Vertex( 0, 0,-r));
m.vertices.push(new Vertex( r, 0, 0));
m.vertices.push(new Vertex( 0, 0, r));

// Normals
m.normals.push(new Vec3( 0,-1, 0));
m.normals.push(new Vec3( 0, 1, 0));
m.normals.push(new Vec3(-1, 0, 0));
m.normals.push(new Vec3( 0, 0,-1));
m.normals.push(new Vec3( 1, 0, 0));
m.normals.push(new Vec3( 0, 0, 1));

// Triangles
m.triangles.push(new Triangle([0, 2, 3], [0, 2, 3]));
m.triangles.push(new Triangle([0, 3, 4], [0, 3, 4]));
m.triangles.push(new Triangle([0, 5, 2], [0, 5, 2]));
m.triangles.push(new Triangle([0, 4, 5], [0, 4, 5]));
m.triangles.push(new Triangle([1, 3, 2], [1, 3, 2]));
m.triangles.push(new Triangle([1, 4, 3], [1, 4, 3]));
m.triangles.push(new Triangle([1, 5, 4], [1, 5, 4]));
m.triangles.push(new Triangle([1, 2, 5], [1, 2, 5]));
