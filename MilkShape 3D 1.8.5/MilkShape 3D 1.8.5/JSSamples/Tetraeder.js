//////////////////////////////////////////////////////////////////////////////
// Tetraeder.js
// Sample script for the msToolJS plugin. Creates a new tetraeder mesh.
// By Ulf Öhlén

r = 10; // Radius

// Create a new mesh
m = model.meshes.push(new Mesh("Tetraeder"));

// Vertices
m.vertices.push(new Vertex(-0.473*r, 0.828*r,-0.323*r));
m.vertices.push(new Vertex( 0.956*r, 0.000*r,-0.323*r));
m.vertices.push(new Vertex(-0.473*r,-0.828*r,-0.323*r));
m.vertices.push(new Vertex( 0.000*r, 0.000*r, 0.970*r));

// Normals
m.normals.push(new Vec3(-0.473, 0.828,-0.323));
m.normals.push(new Vec3( 0.956, 0.000,-0.323));
m.normals.push(new Vec3(-0.473,-0.828,-0.323));
m.normals.push(new Vec3( 0.000, 0.000, 0.970));

// Triangles
m.triangles.push(new Triangle([3, 1, 0], [3, 1, 0]));
m.triangles.push(new Triangle([3, 0, 2], [3, 0, 2]));
m.triangles.push(new Triangle([2, 0, 1], [2, 0, 1]));
m.triangles.push(new Triangle([3, 2, 1], [3, 2, 1]));
