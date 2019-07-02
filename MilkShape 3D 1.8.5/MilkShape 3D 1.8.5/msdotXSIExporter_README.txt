Softimage dotXSI 3.x File Export Olug-in for Milkshape3D - v1.0 Beta
====================================================================

(c) 2004 Neil 'Jed' Jedrzejewski
jed@wunderboy.org
http://www.wunderboy.org/

Most, current version can be found at the above web site.

What does it export?
====================

The plug-in generates an ASCII format dotXSI 3.0 format file, placing
the components of the Milkshape model within their own root.

Elements from Milkshape exported are:

    * Milkshape groups/meshes are exported as is
    * Materials are exported as per Milkshape:
          o Ambient colour
          o Diffuse colour
          o Emmisive colour
          o Specular colour and highlight strength
          o Texture and UV mapping
	  o Vertex Normals (no smoothing groups)
    * Bones are exported as Null objects, but are not linked.
    * Vertex assignments
    * Animation including keyframes


Changelog
=========

Version 1.0 Release

	- Re-written to use the Softimage dotXSI FTK.
	- XSI output structure overhauled (again!).
	- Added bones as null objects.
	- Added vertex assignments.
	- Added animation and keyframe export.
	- Added plug-in options dialog.

Version 0.2 Beta

	- XSI output structure overhauled.
	- Exports Milkshape objects together under one model called "ms3d_root".
	- Each Milkshape object is now retained seperately as part of "ms3d_root".
	- Added missing GlobalMaterial, Translation and Visibility settings.
	- Now uses DevIL image library to correctly report width/height of textures.
	- General tidying up.

Version 0.1 Beta

	- Initial Release

Known bugs/caveats
==================

Most of the bugs from the first beta have been sorted out although the following
are still present.

    * Texture bitmaps paths are relative to the XSI file. (may not fix)

    * Textures aren't automatically set to work with their alpha channels, you'll
      need to set this up yourself with shaders.

Installation
============

Copy the files "msdotXSI3Exporter.dll" and "XSIFtk.dll" into you MilkShape program
folder and start/restart Milkshape. If all is well you should see "Softimage dotXSI 3.x"
under the Export list in the File menu.

You also require the DevIL image library but this is included with the current
version of Milkshape and does not need to be installed seperately.


License/Disclaimer
==================
You are allowed to distribute this plug-in freely as long as it is not for
profit and this documentation is intact and unmodified. If you do decide to
distribute it, please let me know as I'd like to know who's using it.

This software is experimental. I, Neil Jedrzejewski, assume no responsibility
whatsoever for its use by other parties, and makes no guarantees, expressed or
implied, about its quality, reliability, or any other characteristic.

---

This plugin uses Sofimage|XSI FTK (c) Avid Technologies, Inc.
http://www.softimage.com/products/pipeline/ftk/

This plugin uses the DevIL image library (c) Denton Woods et al.
http://www.imagelib.org/

