UniMesh plug-in suite
For using MilkShape to edit “The Sims 2”
GMDC (mesh) game parts.

Copyright, W. Wesley Howe
12-May-2007

Version 4.09: REQUIRES MilkShape 1.7.8 or higher.
UPDATE NOTICE:
Changed Importer to never import a second body mesh skeleton
Added: AutoJoint, MakeSGrps, Normal Data Merge and Vertex Data Merge plugins

INSTALLATION:
Unzip and install the sixteen DLL components into the same directory that MilkShape is installed into. Normally, this is "C:\Program Files\MilkShape 3D 1.7.7\" (or other newer version). If you have a desktop icon, right-clicking on it and selecting properties will show you where MilkShape is installed at. Besides this file, there should be msS2MImp.dll (the importer), msS2MExp.dll (the Exporter), msUBT1.dll (the bone/skin-weight editor), msShowBone2.dll (selects second bone assignments), msShowBone3.dll (selects third bone assignments), msShowBone4.dll (selects fourth bone assignments), msSgp1.dll (which selects all duplicate vertex locations in unhidden meshes), the underweighted vertices (not equal to 100%) selection tool (msUWBFlag.dll), a data-split exporter (msObjXSplitExp.dll), a data-split importer (msObjXSplitImp.dll), a tool to select all bones having a 4th bone assignment (msSAB4.dll), a tool to automatically re-weight all under/over weighted vertice (msFixWgts.dll), a tool to Automatically guess at Bone Assignment values (msTS2AutoJoint.dll), a tool to Split the mesh into smoothing groups automatically (msTS2MakeSGrps.dll), a tool to merge normal data from one selection to another (msTS2NDM.dll) and a tool to merge vertex data (location and bone assignments/weights)(msTS2VDM.dll).

Redistribution: Although this package of tools has been designed to be freely available to and usable by the “modding” community, all rights to post or otherwise distribute any copy of the software, including this manual (except for excerpts) are retained by the Author, W. Wesley Howe. No other person may post this package on any Web Site, Bulletin Board Service, CD Rom, Book or any other medium of distribution, private or commercial, without express written license from the author.

An exception to this rule is made to allow any non-commercial user to distribute the package as an attachment to an email addressed to no more that two other named recipients, each having specifically requested copies of it. Repeated redistribution by these means on a frequent and repeated basis (NO SPAM), or when accompanied by any form of remuneration or request for funding, or requiring anything of value for receipt of the program is STRICTLY PROHIBITED.

Besides The MilkShape site,at http://www.swissquake.ch/chumbalum-soft/index.html, these plugins will be posted on http://www.modthesims2.com/. No other distributions have been authorized. This is mainly to allow me to better support their use, as making game modifications to "The Sims 2" is quite complex.

I tend to be found most easily in the forums at at www.modthesims2.com. I accept private messages, but not emails (my email cup runneth over already).

Happy Modding,
<* Wes *>

(Special thanks to SnowStorm and RoseSims for their hair, bumpmapping and morph tests).

Release History:
17-jan-2006: Initial release.
23-jan-2006: Repaired skin weight & bone assignments coding, fixed bone weight crash w/MS 1.7.7A
24-jan-2006: Exporter repairs some vertices damaged by improper welding.
25-jan-2006: Importer repaired to no longer mix parts of multiple morphs into wrong morphs
28-jan-2006: V4.04, updated for 4th bone support, added Show Bone 4
16-feb-2006: V4.05, updated morph object mesh import capabilities.
01-may-2006: V4.06, updated exporter mouse-clicks and option to not import 2nd skeleton
10-jan-2007: V4.07, updated importer and exporter to better support morphs and boned meshes
15-feb-2007: V4.08, Updated importer with linked skeleton, bone import change with no mesh
12-may-2007: V4.09, Updated importer plus 4 new tools
