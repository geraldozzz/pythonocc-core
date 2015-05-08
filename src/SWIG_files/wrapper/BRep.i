/*
Copyright 2008-2014 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module (package="OCC") BRep

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i

%include BRep_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

class BRep_Builder : public TopoDS_Builder {
	public:
		%feature("autodoc", "	* Makes an undefined Face.

	:param F:
	:type F: TopoDS_Face &
	:rtype: None
") MakeFace;
		void MakeFace (TopoDS_Face & F);
		%feature("autodoc", "	* Makes a Face with a surface.

	:param F:
	:type F: TopoDS_Face &
	:param S:
	:type S: Handle_Geom_Surface &
	:param Tol:
	:type Tol: float
	:rtype: None
") MakeFace;
		void MakeFace (TopoDS_Face & F,const Handle_Geom_Surface & S,const Standard_Real Tol);
		%feature("autodoc", "	* Makes a Face with a surface and a location.

	:param F:
	:type F: TopoDS_Face &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") MakeFace;
		void MakeFace (TopoDS_Face & F,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Makes a Face with a triangulation. The triangulation is in the same reference system than the TFace.

	:param F:
	:type F: TopoDS_Face &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") MakeFace;
		void MakeFace (TopoDS_Face & F,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* Updates the face F using the tolerance value Tol, surface S and location Location.

	:param F:
	:type F: TopoDS_Face &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateFace;
		void UpdateFace (const TopoDS_Face & F,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Changes a face triangulation.  A null Triangulation removes the triangulation.

	:param F:
	:type F: TopoDS_Face &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") UpdateFace;
		void UpdateFace (const TopoDS_Face & F,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* Updates the face Tolerance.

	:param F:
	:type F: TopoDS_Face &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateFace;
		void UpdateFace (const TopoDS_Face & F,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the NaturalRestriction flag of the face.

	:param F:
	:type F: TopoDS_Face &
	:param N:
	:type N: bool
	:rtype: None
") NaturalRestriction;
		void NaturalRestriction (const TopoDS_Face & F,const Standard_Boolean N);
		%feature("autodoc", "	* Makes an undefined Edge (no geometry).

	:param E:
	:type E: TopoDS_Edge &
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E);
		%feature("autodoc", "	* Makes an Edge with a curve.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom_Curve &
	:param Tol:
	:type Tol: float
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E,const Handle_Geom_Curve & C,const Standard_Real Tol);
		%feature("autodoc", "	* Makes an Edge with a curve and a location.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E,const Handle_Geom_Curve & C,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Makes an Edge with a polygon 3d.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_Polygon3D &
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E,const Handle_Poly_Polygon3D & P);
		%feature("autodoc", "	* makes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N:
	:type N: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* makes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N:
	:type N: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") MakeEdge;
		void MakeEdge (TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N,const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* Sets a 3D curve for the edge. If <C> is a null handle, remove any existing 3d curve.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom_Curve &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom_Curve & C,const Standard_Real Tol);
		%feature("autodoc", "	* Sets a 3D curve for the edge. If <C> is a null handle, remove any existing 3d curve.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom_Curve & C,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Sets a pcurve for the edge on the face. If <C> is a null handle, remove any existing pcurve.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param F:
	:type F: TopoDS_Face &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C,const TopoDS_Face & F,const Standard_Real Tol);
		%feature("autodoc", "	* Sets pcurves for the edge on the closed face. If <C1> or <C2> is a null handle, remove any existing pcurve.

	:param E:
	:type E: TopoDS_Edge &
	:param C1:
	:type C1: Handle_Geom2d_Curve &
	:param C2:
	:type C2: Handle_Geom2d_Curve &
	:param F:
	:type F: TopoDS_Face &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C1,const Handle_Geom2d_Curve & C2,const TopoDS_Face & F,const Standard_Real Tol);
		%feature("autodoc", "	* Sets a pcurve for the edge on the face. If <C> is a null handle, remove any existing pcurve.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Sets a pcurve for the edge on the face. If <C> is a null handle, remove any existing pcurve. Sets UV bounds for curve repsentation

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:param Pf:
	:type Pf: gp_Pnt2d
	:param Pl:
	:type Pl: gp_Pnt2d
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol,const gp_Pnt2d & Pf,const gp_Pnt2d & Pl);
		%feature("autodoc", "	* Sets pcurves for the edge on the closed surface. <C1> or <C2> is a null handle, remove any existing pcurve.

	:param E:
	:type E: TopoDS_Edge &
	:param C1:
	:type C1: Handle_Geom2d_Curve &
	:param C2:
	:type C2: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C1,const Handle_Geom2d_Curve & C2,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Sets pcurves for the edge on the closed surface. <C1> or <C2> is a null handle, remove any existing pcurve. Sets UV bounds for curve repsentation

	:param E:
	:type E: TopoDS_Edge &
	:param C1:
	:type C1: Handle_Geom2d_Curve &
	:param C2:
	:type C2: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:param Pf:
	:type Pf: gp_Pnt2d
	:param Pl:
	:type Pl: gp_Pnt2d
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Geom2d_Curve & C1,const Handle_Geom2d_Curve & C2,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol,const gp_Pnt2d & Pf,const gp_Pnt2d & Pl);
		%feature("autodoc", "	* Changes an Edge 3D polygon. A null Polygon removes the 3d Polygon.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_Polygon3D &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon3D & P);
		%feature("autodoc", "	* Changes an Edge 3D polygon. A null Polygon removes the 3d Polygon.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_Polygon3D &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon3D & P,const TopLoc_Location & L);
		%feature("autodoc", "	* Changes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N:
	:type N: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* Changes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N:
	:type N: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N,const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* Changes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N1:
	:type N1: Handle_Poly_PolygonOnTriangulation &
	:param N2:
	:type N2: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N1,const Handle_Poly_PolygonOnTriangulation & N2,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* Changes an Edge polygon on Triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param N1:
	:type N1: Handle_Poly_PolygonOnTriangulation &
	:param N2:
	:type N2: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_PolygonOnTriangulation & N1,const Handle_Poly_PolygonOnTriangulation & N2,const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* Changes Edge polygon on a face.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_Polygon2D &
	:param S:
	:type S: TopoDS_Face &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon2D & P,const TopoDS_Face & S);
		%feature("autodoc", "	* Changes Edge polygon on a face.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param T:
	:type T: TopLoc_Location &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon2D & P,const Handle_Geom_Surface & S,const TopLoc_Location & T);
		%feature("autodoc", "	* Changes Edge polygons on a face.  A null Polygon removes the 2d Polygon.

	:param E:
	:type E: TopoDS_Edge &
	:param P1:
	:type P1: Handle_Poly_Polygon2D &
	:param P2:
	:type P2: Handle_Poly_Polygon2D &
	:param S:
	:type S: TopoDS_Face &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon2D & P1,const Handle_Poly_Polygon2D & P2,const TopoDS_Face & S);
		%feature("autodoc", "	* Changes Edge polygons on a face.  A null Polygon removes the 2d Polygon.

	:param E:
	:type E: TopoDS_Edge &
	:param P1:
	:type P1: Handle_Poly_Polygon2D &
	:param P2:
	:type P2: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Handle_Poly_Polygon2D & P1,const Handle_Poly_Polygon2D & P2,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Updates the edge tolerance.

	:param E:
	:type E: TopoDS_Edge &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateEdge;
		void UpdateEdge (const TopoDS_Edge & E,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the geometric continuity on the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param F1:
	:type F1: TopoDS_Face &
	:param F2:
	:type F2: TopoDS_Face &
	:param C:
	:type C: GeomAbs_Shape
	:rtype: None
") Continuity;
		void Continuity (const TopoDS_Edge & E,const TopoDS_Face & F1,const TopoDS_Face & F2,const GeomAbs_Shape C);
		%feature("autodoc", "	* Sets the geometric continuity on the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:param C:
	:type C: GeomAbs_Shape
	:rtype: None
") Continuity;
		void Continuity (const TopoDS_Edge & E,const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2,const GeomAbs_Shape C);
		%feature("autodoc", "	* Sets the same parameter flag for the edge <E>.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: bool
	:rtype: None
") SameParameter;
		void SameParameter (const TopoDS_Edge & E,const Standard_Boolean S);
		%feature("autodoc", "	* Sets the same range flag for the edge <E>.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: bool
	:rtype: None
") SameRange;
		void SameRange (const TopoDS_Edge & E,const Standard_Boolean S);
		%feature("autodoc", "	* Sets the degenerated flag for the edge <E>.

	:param E:
	:type E: TopoDS_Edge &
	:param D:
	:type D: bool
	:rtype: None
") Degenerated;
		void Degenerated (const TopoDS_Edge & E,const Standard_Boolean D);
		%feature("autodoc", "	* Sets the range of the 3d curve if Only3d=True, otherwise sets the range to all the representations

	:param E:
	:type E: TopoDS_Edge &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:param Only3d: default value is Standard_False
	:type Only3d: bool
	:rtype: None
") Range;
		void Range (const TopoDS_Edge & E,const Standard_Real First,const Standard_Real Last,const Standard_Boolean Only3d = Standard_False);
		%feature("autodoc", "	* Sets the range of the edge on the pcurve on the surface.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:rtype: None
") Range;
		void Range (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real First,const Standard_Real Last);
		%feature("autodoc", "	* Sets the range of the edge on the pcurve on the face.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:rtype: None
") Range;
		void Range (const TopoDS_Edge & E,const TopoDS_Face & F,const Standard_Real First,const Standard_Real Last);
		%feature("autodoc", "	* Add to <Eout> the geometric representations of <Ein>.

	:param Ein:
	:type Ein: TopoDS_Edge &
	:param Eout:
	:type Eout: TopoDS_Edge &
	:rtype: None
") Transfert;
		void Transfert (const TopoDS_Edge & Ein,const TopoDS_Edge & Eout);
		%feature("autodoc", "	* Makes an udefined vertex without geometry.

	:param V:
	:type V: TopoDS_Vertex &
	:rtype: None
") MakeVertex;
		void MakeVertex (TopoDS_Vertex & V);
		%feature("autodoc", "	* Makes a vertex from a 3D point.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: gp_Pnt
	:param Tol:
	:type Tol: float
	:rtype: None
") MakeVertex;
		void MakeVertex (TopoDS_Vertex & V,const gp_Pnt & P,const Standard_Real Tol);
		%feature("autodoc", "	* Sets a 3D point on the vertex.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: gp_Pnt
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & V,const gp_Pnt & P,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the parameter for the vertex on the edge curves.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: float
	:param E:
	:type E: TopoDS_Edge &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & V,const Standard_Real P,const TopoDS_Edge & E,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the parameter for the vertex on the edge pcurve on the face.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: float
	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & V,const Standard_Real P,const TopoDS_Edge & E,const TopoDS_Face & F,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the parameter for the vertex on the edge pcurve on the surface.

	:param V:
	:type V: TopoDS_Vertex &
	:param P:
	:type P: float
	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & V,const Standard_Real P,const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,const Standard_Real Tol);
		%feature("autodoc", "	* Sets the parameters for the vertex on the face.

	:param Ve:
	:type Ve: TopoDS_Vertex &
	:param U:
	:type U: float
	:param V:
	:type V: float
	:param F:
	:type F: TopoDS_Face &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & Ve,const Standard_Real U,const Standard_Real V,const TopoDS_Face & F,const Standard_Real Tol);
		%feature("autodoc", "	* Updates the vertex tolerance.

	:param V:
	:type V: TopoDS_Vertex &
	:param Tol:
	:type Tol: float
	:rtype: None
") UpdateVertex;
		void UpdateVertex (const TopoDS_Vertex & V,const Standard_Real Tol);
		%feature("autodoc", "	* Transfert the parameters of Vin on Ein as the parameter of Vout on Eout.

	:param Ein:
	:type Ein: TopoDS_Edge &
	:param Eout:
	:type Eout: TopoDS_Edge &
	:param Vin:
	:type Vin: TopoDS_Vertex &
	:param Vout:
	:type Vout: TopoDS_Vertex &
	:rtype: None
") Transfert;
		void Transfert (const TopoDS_Edge & Ein,const TopoDS_Edge & Eout,const TopoDS_Vertex & Vin,const TopoDS_Vertex & Vout);
};


%feature("shadow") BRep_Builder::~BRep_Builder %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_Builder {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_CurveRepresentation;
class BRep_CurveRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "	* A 3D curve representation.

	:rtype: bool
") IsCurve3D;
		virtual Standard_Boolean IsCurve3D ();
		%feature("autodoc", "	* A curve in the parametric space of a surface.

	:rtype: bool
") IsCurveOnSurface;
		virtual Standard_Boolean IsCurveOnSurface ();
		%feature("autodoc", "	* A continuity between two surfaces.

	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity ();
		%feature("autodoc", "	* A curve with two parametric curves on the same surface.

	:rtype: bool
") IsCurveOnClosedSurface;
		virtual Standard_Boolean IsCurveOnClosedSurface ();
		%feature("autodoc", "	* Is it a curve in the parametric space of <S> with location <L>.

	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsCurveOnSurface;
		virtual Standard_Boolean IsCurveOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Is it a regularity between <S1> and <S2> with location <L1> and <L2>.

	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity (const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2);
		%feature("autodoc", "	* A 3D polygon representation.

	:rtype: bool
") IsPolygon3D;
		virtual Standard_Boolean IsPolygon3D ();
		%feature("autodoc", "	* A representation by an array of nodes on a triangulation.

	:rtype: bool
") IsPolygonOnTriangulation;
		virtual Standard_Boolean IsPolygonOnTriangulation ();
		%feature("autodoc", "	* Is it a polygon in the definition of <T> with location <L>.

	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPolygonOnTriangulation;
		virtual Standard_Boolean IsPolygonOnTriangulation (const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* A representation by two arrays of nodes on a triangulation.

	:rtype: bool
") IsPolygonOnClosedTriangulation;
		virtual Standard_Boolean IsPolygonOnClosedTriangulation ();
		%feature("autodoc", "	* A polygon in the parametric space of a surface.

	:rtype: bool
") IsPolygonOnSurface;
		virtual Standard_Boolean IsPolygonOnSurface ();
		%feature("autodoc", "	* Is it a polygon in the parametric space of <S> with location <L>.

	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPolygonOnSurface;
		virtual Standard_Boolean IsPolygonOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Two 2D polygon representations in the parametric space of a surface.

	:rtype: bool
") IsPolygonOnClosedSurface;
		virtual Standard_Boolean IsPolygonOnClosedSurface ();
		%feature("autodoc", "	:rtype: TopLoc_Location
") Location;
		const TopLoc_Location & Location ();
		%feature("autodoc", "	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") Location;
		void Location (const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: Handle_Geom_Curve
") Curve3D;
		virtual const Handle_Geom_Curve & Curve3D ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:rtype: void
") Curve3D;
		virtual void Curve3D (const Handle_Geom_Curve & C);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve;
		virtual const Handle_Geom2d_Curve & PCurve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve;
		virtual void PCurve (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve2;
		virtual const Handle_Geom2d_Curve & PCurve2 ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve2;
		virtual void PCurve2 (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon3D
") Polygon3D;
		virtual const Handle_Poly_Polygon3D & Polygon3D ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon3D &
	:rtype: void
") Polygon3D;
		virtual void Polygon3D (const Handle_Poly_Polygon3D & P);
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon2D
") Polygon;
		virtual const Handle_Poly_Polygon2D & Polygon ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon2D &
	:rtype: void
") Polygon;
		virtual void Polygon (const Handle_Poly_Polygon2D & P);
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon2D
") Polygon2;
		virtual const Handle_Poly_Polygon2D & Polygon2 ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon2D &
	:rtype: void
") Polygon2;
		virtual void Polygon2 (const Handle_Poly_Polygon2D & P);
		%feature("autodoc", "	:rtype: Handle_Poly_Triangulation
") Triangulation;
		virtual const Handle_Poly_Triangulation & Triangulation ();
		%feature("autodoc", "	:rtype: Handle_Poly_PolygonOnTriangulation
") PolygonOnTriangulation;
		virtual const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_PolygonOnTriangulation &
	:rtype: void
") PolygonOnTriangulation;
		virtual void PolygonOnTriangulation (const Handle_Poly_PolygonOnTriangulation & P);
		%feature("autodoc", "	:rtype: Handle_Poly_PolygonOnTriangulation
") PolygonOnTriangulation2;
		virtual const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation2 ();
		%feature("autodoc", "	:param P2:
	:type P2: Handle_Poly_PolygonOnTriangulation &
	:rtype: void
") PolygonOnTriangulation2;
		virtual void PolygonOnTriangulation2 (const Handle_Poly_PolygonOnTriangulation & P2);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface2;
		virtual const Handle_Geom_Surface & Surface2 ();
		%feature("autodoc", "	:rtype: TopLoc_Location
") Location2;
		virtual const TopLoc_Location & Location2 ();
		%feature("autodoc", "	:rtype: GeomAbs_Shape
") Continuity;
		virtual const GeomAbs_Shape & Continuity ();
		%feature("autodoc", "	:param C:
	:type C: GeomAbs_Shape
	:rtype: void
") Continuity;
		virtual void Continuity (const GeomAbs_Shape C);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_CurveRepresentation::~BRep_CurveRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_CurveRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_CurveRepresentation {
	Handle_BRep_CurveRepresentation GetHandle() {
	return *(Handle_BRep_CurveRepresentation*) &$self;
	}
};

%nodefaultctor Handle_BRep_CurveRepresentation;
class Handle_BRep_CurveRepresentation : public Handle_MMgt_TShared {

    public:
        // constructors
        Handle_BRep_CurveRepresentation();
        Handle_BRep_CurveRepresentation(const Handle_BRep_CurveRepresentation &aHandle);
        Handle_BRep_CurveRepresentation(const BRep_CurveRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_CurveRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveRepresentation {
    BRep_CurveRepresentation* GetObject() {
    return (BRep_CurveRepresentation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_CurveRepresentation::~Handle_BRep_CurveRepresentation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_CurveRepresentation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_ListIteratorOfListOfCurveRepresentation;
class BRep_ListIteratorOfListOfCurveRepresentation {
	public:
		%feature("autodoc", "	:rtype: None
") BRep_ListIteratorOfListOfCurveRepresentation;
		 BRep_ListIteratorOfListOfCurveRepresentation ();
		%feature("autodoc", "	:param L:
	:type L: BRep_ListOfCurveRepresentation &
	:rtype: None
") BRep_ListIteratorOfListOfCurveRepresentation;
		 BRep_ListIteratorOfListOfCurveRepresentation (const BRep_ListOfCurveRepresentation & L);
		%feature("autodoc", "	:param L:
	:type L: BRep_ListOfCurveRepresentation &
	:rtype: None
") Initialize;
		void Initialize (const BRep_ListOfCurveRepresentation & L);
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("autodoc", "	:rtype: Handle_BRep_CurveRepresentation
") Value;
		Handle_BRep_CurveRepresentation & Value ();
};


%feature("shadow") BRep_ListIteratorOfListOfCurveRepresentation::~BRep_ListIteratorOfListOfCurveRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListIteratorOfListOfCurveRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_ListIteratorOfListOfPointRepresentation;
class BRep_ListIteratorOfListOfPointRepresentation {
	public:
		%feature("autodoc", "	:rtype: None
") BRep_ListIteratorOfListOfPointRepresentation;
		 BRep_ListIteratorOfListOfPointRepresentation ();
		%feature("autodoc", "	:param L:
	:type L: BRep_ListOfPointRepresentation &
	:rtype: None
") BRep_ListIteratorOfListOfPointRepresentation;
		 BRep_ListIteratorOfListOfPointRepresentation (const BRep_ListOfPointRepresentation & L);
		%feature("autodoc", "	:param L:
	:type L: BRep_ListOfPointRepresentation &
	:rtype: None
") Initialize;
		void Initialize (const BRep_ListOfPointRepresentation & L);
		%feature("autodoc", "	:rtype: bool
") More;
		Standard_Boolean More ();
		%feature("autodoc", "	:rtype: None
") Next;
		void Next ();
		%feature("autodoc", "	:rtype: Handle_BRep_PointRepresentation
") Value;
		Handle_BRep_PointRepresentation & Value ();
};


%feature("shadow") BRep_ListIteratorOfListOfPointRepresentation::~BRep_ListIteratorOfListOfPointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListIteratorOfListOfPointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_ListNodeOfListOfCurveRepresentation;
class BRep_ListNodeOfListOfCurveRepresentation : public TCollection_MapNode {
	public:
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") BRep_ListNodeOfListOfCurveRepresentation;
		 BRep_ListNodeOfListOfCurveRepresentation (const Handle_BRep_CurveRepresentation & I,const TCollection_MapNodePtr & n);
		%feature("autodoc", "	:rtype: Handle_BRep_CurveRepresentation
") Value;
		Handle_BRep_CurveRepresentation & Value ();
};


%feature("shadow") BRep_ListNodeOfListOfCurveRepresentation::~BRep_ListNodeOfListOfCurveRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListNodeOfListOfCurveRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_ListNodeOfListOfCurveRepresentation {
	Handle_BRep_ListNodeOfListOfCurveRepresentation GetHandle() {
	return *(Handle_BRep_ListNodeOfListOfCurveRepresentation*) &$self;
	}
};

%nodefaultctor Handle_BRep_ListNodeOfListOfCurveRepresentation;
class Handle_BRep_ListNodeOfListOfCurveRepresentation : public Handle_TCollection_MapNode {

    public:
        // constructors
        Handle_BRep_ListNodeOfListOfCurveRepresentation();
        Handle_BRep_ListNodeOfListOfCurveRepresentation(const Handle_BRep_ListNodeOfListOfCurveRepresentation &aHandle);
        Handle_BRep_ListNodeOfListOfCurveRepresentation(const BRep_ListNodeOfListOfCurveRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_ListNodeOfListOfCurveRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_ListNodeOfListOfCurveRepresentation {
    BRep_ListNodeOfListOfCurveRepresentation* GetObject() {
    return (BRep_ListNodeOfListOfCurveRepresentation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_ListNodeOfListOfCurveRepresentation::~Handle_BRep_ListNodeOfListOfCurveRepresentation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_ListNodeOfListOfCurveRepresentation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_ListNodeOfListOfPointRepresentation;
class BRep_ListNodeOfListOfPointRepresentation : public TCollection_MapNode {
	public:
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:param n:
	:type n: TCollection_MapNodePtr &
	:rtype: None
") BRep_ListNodeOfListOfPointRepresentation;
		 BRep_ListNodeOfListOfPointRepresentation (const Handle_BRep_PointRepresentation & I,const TCollection_MapNodePtr & n);
		%feature("autodoc", "	:rtype: Handle_BRep_PointRepresentation
") Value;
		Handle_BRep_PointRepresentation & Value ();
};


%feature("shadow") BRep_ListNodeOfListOfPointRepresentation::~BRep_ListNodeOfListOfPointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListNodeOfListOfPointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_ListNodeOfListOfPointRepresentation {
	Handle_BRep_ListNodeOfListOfPointRepresentation GetHandle() {
	return *(Handle_BRep_ListNodeOfListOfPointRepresentation*) &$self;
	}
};

%nodefaultctor Handle_BRep_ListNodeOfListOfPointRepresentation;
class Handle_BRep_ListNodeOfListOfPointRepresentation : public Handle_TCollection_MapNode {

    public:
        // constructors
        Handle_BRep_ListNodeOfListOfPointRepresentation();
        Handle_BRep_ListNodeOfListOfPointRepresentation(const Handle_BRep_ListNodeOfListOfPointRepresentation &aHandle);
        Handle_BRep_ListNodeOfListOfPointRepresentation(const BRep_ListNodeOfListOfPointRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_ListNodeOfListOfPointRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_ListNodeOfListOfPointRepresentation {
    BRep_ListNodeOfListOfPointRepresentation* GetObject() {
    return (BRep_ListNodeOfListOfPointRepresentation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_ListNodeOfListOfPointRepresentation::~Handle_BRep_ListNodeOfListOfPointRepresentation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_ListNodeOfListOfPointRepresentation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_ListOfCurveRepresentation;
class BRep_ListOfCurveRepresentation {
	public:
		%feature("autodoc", "	:rtype: None
") BRep_ListOfCurveRepresentation;
		 BRep_ListOfCurveRepresentation ();
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:rtype: None
") Assign;
		void Assign (const BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:rtype: None
") operator=;
		void operator = (const BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "	:rtype: int
") Extent;
		Standard_Integer Extent ();
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:rtype: None
") Prepend;
		void Prepend (const Handle_BRep_CurveRepresentation & I);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:param theIt:
	:type theIt: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") Prepend;
		void Prepend (const Handle_BRep_CurveRepresentation & I,BRep_ListIteratorOfListOfCurveRepresentation & theIt);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:rtype: None
") Prepend;
		void Prepend (BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:rtype: None
") Append;
		void Append (const Handle_BRep_CurveRepresentation & I);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:param theIt:
	:type theIt: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") Append;
		void Append (const Handle_BRep_CurveRepresentation & I,BRep_ListIteratorOfListOfCurveRepresentation & theIt);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:rtype: None
") Append;
		void Append (BRep_ListOfCurveRepresentation & Other);
		%feature("autodoc", "	:rtype: Handle_BRep_CurveRepresentation
") First;
		Handle_BRep_CurveRepresentation & First ();
		%feature("autodoc", "	:rtype: Handle_BRep_CurveRepresentation
") Last;
		Handle_BRep_CurveRepresentation & Last ();
		%feature("autodoc", "	:rtype: None
") RemoveFirst;
		void RemoveFirst ();
		%feature("autodoc", "	:param It:
	:type It: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") Remove;
		void Remove (BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") InsertBefore;
		void InsertBefore (const Handle_BRep_CurveRepresentation & I,BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") InsertBefore;
		void InsertBefore (BRep_ListOfCurveRepresentation & Other,BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_CurveRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") InsertAfter;
		void InsertAfter (const Handle_BRep_CurveRepresentation & I,BRep_ListIteratorOfListOfCurveRepresentation & It);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfCurveRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfCurveRepresentation &
	:rtype: None
") InsertAfter;
		void InsertAfter (BRep_ListOfCurveRepresentation & Other,BRep_ListIteratorOfListOfCurveRepresentation & It);
};


%feature("shadow") BRep_ListOfCurveRepresentation::~BRep_ListOfCurveRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListOfCurveRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_ListOfPointRepresentation;
class BRep_ListOfPointRepresentation {
	public:
		%feature("autodoc", "	:rtype: None
") BRep_ListOfPointRepresentation;
		 BRep_ListOfPointRepresentation ();
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:rtype: None
") Assign;
		void Assign (const BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:rtype: None
") operator=;
		void operator = (const BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "	:rtype: int
") Extent;
		Standard_Integer Extent ();
		%feature("autodoc", "	:rtype: None
") Clear;
		void Clear ();
		%feature("autodoc", "	:rtype: bool
") IsEmpty;
		Standard_Boolean IsEmpty ();
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:rtype: None
") Prepend;
		void Prepend (const Handle_BRep_PointRepresentation & I);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:param theIt:
	:type theIt: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") Prepend;
		void Prepend (const Handle_BRep_PointRepresentation & I,BRep_ListIteratorOfListOfPointRepresentation & theIt);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:rtype: None
") Prepend;
		void Prepend (BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:rtype: None
") Append;
		void Append (const Handle_BRep_PointRepresentation & I);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:param theIt:
	:type theIt: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") Append;
		void Append (const Handle_BRep_PointRepresentation & I,BRep_ListIteratorOfListOfPointRepresentation & theIt);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:rtype: None
") Append;
		void Append (BRep_ListOfPointRepresentation & Other);
		%feature("autodoc", "	:rtype: Handle_BRep_PointRepresentation
") First;
		Handle_BRep_PointRepresentation & First ();
		%feature("autodoc", "	:rtype: Handle_BRep_PointRepresentation
") Last;
		Handle_BRep_PointRepresentation & Last ();
		%feature("autodoc", "	:rtype: None
") RemoveFirst;
		void RemoveFirst ();
		%feature("autodoc", "	:param It:
	:type It: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") Remove;
		void Remove (BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") InsertBefore;
		void InsertBefore (const Handle_BRep_PointRepresentation & I,BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") InsertBefore;
		void InsertBefore (BRep_ListOfPointRepresentation & Other,BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "	:param I:
	:type I: Handle_BRep_PointRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") InsertAfter;
		void InsertAfter (const Handle_BRep_PointRepresentation & I,BRep_ListIteratorOfListOfPointRepresentation & It);
		%feature("autodoc", "	:param Other:
	:type Other: BRep_ListOfPointRepresentation &
	:param It:
	:type It: BRep_ListIteratorOfListOfPointRepresentation &
	:rtype: None
") InsertAfter;
		void InsertAfter (BRep_ListOfPointRepresentation & Other,BRep_ListIteratorOfListOfPointRepresentation & It);
};


%feature("shadow") BRep_ListOfPointRepresentation::~BRep_ListOfPointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_ListOfPointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_PointRepresentation;
class BRep_PointRepresentation : public MMgt_TShared {
	public:
		%feature("autodoc", "	* A point on a 3d curve.

	:rtype: bool
") IsPointOnCurve;
		virtual Standard_Boolean IsPointOnCurve ();
		%feature("autodoc", "	* A point on a 2d curve on a surface.

	:rtype: bool
") IsPointOnCurveOnSurface;
		virtual Standard_Boolean IsPointOnCurveOnSurface ();
		%feature("autodoc", "	* A point on a surface.

	:rtype: bool
") IsPointOnSurface;
		virtual Standard_Boolean IsPointOnSurface ();
		%feature("autodoc", "	* A point on the curve <C>.

	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnCurve;
		virtual Standard_Boolean IsPointOnCurve (const Handle_Geom_Curve & C,const TopLoc_Location & L);
		%feature("autodoc", "	* A point on the 2d curve <PC> on the surface <S>.

	:param PC:
	:type PC: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnCurveOnSurface;
		virtual Standard_Boolean IsPointOnCurveOnSurface (const Handle_Geom2d_Curve & PC,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* A point on the surface <S>.

	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnSurface;
		virtual Standard_Boolean IsPointOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: TopLoc_Location
") Location;
		const TopLoc_Location & Location ();
		%feature("autodoc", "	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") Location;
		void Location (const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: float
") Parameter;
		Standard_Real Parameter ();
		%feature("autodoc", "	:param P:
	:type P: float
	:rtype: None
") Parameter;
		void Parameter (const Standard_Real P);
		%feature("autodoc", "	:rtype: float
") Parameter2;
		virtual Standard_Real Parameter2 ();
		%feature("autodoc", "	:param P:
	:type P: float
	:rtype: void
") Parameter2;
		virtual void Parameter2 (const Standard_Real P);
		%feature("autodoc", "	:rtype: Handle_Geom_Curve
") Curve;
		virtual const Handle_Geom_Curve & Curve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:rtype: void
") Curve;
		virtual void Curve (const Handle_Geom_Curve & C);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve;
		virtual const Handle_Geom2d_Curve & PCurve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve;
		virtual void PCurve (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:param S:
	:type S: Handle_Geom_Surface &
	:rtype: void
") Surface;
		virtual void Surface (const Handle_Geom_Surface & S);
};


%feature("shadow") BRep_PointRepresentation::~BRep_PointRepresentation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PointRepresentation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PointRepresentation {
	Handle_BRep_PointRepresentation GetHandle() {
	return *(Handle_BRep_PointRepresentation*) &$self;
	}
};

%nodefaultctor Handle_BRep_PointRepresentation;
class Handle_BRep_PointRepresentation : public Handle_MMgt_TShared {

    public:
        // constructors
        Handle_BRep_PointRepresentation();
        Handle_BRep_PointRepresentation(const Handle_BRep_PointRepresentation &aHandle);
        Handle_BRep_PointRepresentation(const BRep_PointRepresentation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PointRepresentation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointRepresentation {
    BRep_PointRepresentation* GetObject() {
    return (BRep_PointRepresentation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PointRepresentation::~Handle_BRep_PointRepresentation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PointRepresentation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_TEdge;
class BRep_TEdge : public TopoDS_TEdge {
	public:
		%feature("autodoc", "	* Creates an empty TEdge.

	:rtype: None
") BRep_TEdge;
		 BRep_TEdge ();
		%feature("autodoc", "	:rtype: float
") Tolerance;
		Standard_Real Tolerance ();
		%feature("autodoc", "	:param T:
	:type T: float
	:rtype: None
") Tolerance;
		void Tolerance (const Standard_Real T);
		%feature("autodoc", "	* Sets the tolerance to the max of <T> and the current tolerance.

	:param T:
	:type T: float
	:rtype: None
") UpdateTolerance;
		void UpdateTolerance (const Standard_Real T);
		%feature("autodoc", "	:rtype: bool
") SameParameter;
		Standard_Boolean SameParameter ();
		%feature("autodoc", "	:param S:
	:type S: bool
	:rtype: None
") SameParameter;
		void SameParameter (const Standard_Boolean S);
		%feature("autodoc", "	:rtype: bool
") SameRange;
		Standard_Boolean SameRange ();
		%feature("autodoc", "	:param S:
	:type S: bool
	:rtype: None
") SameRange;
		void SameRange (const Standard_Boolean S);
		%feature("autodoc", "	:rtype: bool
") Degenerated;
		Standard_Boolean Degenerated ();
		%feature("autodoc", "	:param S:
	:type S: bool
	:rtype: None
") Degenerated;
		void Degenerated (const Standard_Boolean S);
		%feature("autodoc", "	:rtype: BRep_ListOfCurveRepresentation
") Curves;
		const BRep_ListOfCurveRepresentation & Curves ();
		%feature("autodoc", "	:rtype: BRep_ListOfCurveRepresentation
") ChangeCurves;
		BRep_ListOfCurveRepresentation & ChangeCurves ();
		%feature("autodoc", "	* Returns a copy of the TShape with no sub-shapes.

	:rtype: Handle_TopoDS_TShape
") EmptyCopy;
		Handle_TopoDS_TShape EmptyCopy ();
};


%feature("shadow") BRep_TEdge::~BRep_TEdge %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_TEdge {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_TEdge {
	Handle_BRep_TEdge GetHandle() {
	return *(Handle_BRep_TEdge*) &$self;
	}
};

%nodefaultctor Handle_BRep_TEdge;
class Handle_BRep_TEdge : public Handle_TopoDS_TEdge {

    public:
        // constructors
        Handle_BRep_TEdge();
        Handle_BRep_TEdge(const Handle_BRep_TEdge &aHandle);
        Handle_BRep_TEdge(const BRep_TEdge *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_TEdge DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TEdge {
    BRep_TEdge* GetObject() {
    return (BRep_TEdge*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_TEdge::~Handle_BRep_TEdge %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_TEdge {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_TFace;
class BRep_TFace : public TopoDS_TFace {
	public:
		%feature("autodoc", "	* Creates an empty TFace.

	:rtype: None
") BRep_TFace;
		 BRep_TFace ();
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:rtype: Handle_Poly_Triangulation
") Triangulation;
		const Handle_Poly_Triangulation & Triangulation ();
		%feature("autodoc", "	:rtype: TopLoc_Location
") Location;
		const TopLoc_Location & Location ();
		%feature("autodoc", "	:rtype: float
") Tolerance;
		Standard_Real Tolerance ();
		%feature("autodoc", "	:param S:
	:type S: Handle_Geom_Surface &
	:rtype: None
") Surface;
		void Surface (const Handle_Geom_Surface & S);
		%feature("autodoc", "	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: None
") Triangulation;
		void Triangulation (const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") Location;
		void Location (const TopLoc_Location & L);
		%feature("autodoc", "	:param T:
	:type T: float
	:rtype: None
") Tolerance;
		void Tolerance (const Standard_Real T);
		%feature("autodoc", "	:rtype: bool
") NaturalRestriction;
		Standard_Boolean NaturalRestriction ();
		%feature("autodoc", "	:param N:
	:type N: bool
	:rtype: None
") NaturalRestriction;
		void NaturalRestriction (const Standard_Boolean N);
		%feature("autodoc", "	* Returns a copy of the TShape with no sub-shapes. The new Face has no triangulation.

	:rtype: Handle_TopoDS_TShape
") EmptyCopy;
		virtual Handle_TopoDS_TShape EmptyCopy ();
};


%feature("shadow") BRep_TFace::~BRep_TFace %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_TFace {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_TFace {
	Handle_BRep_TFace GetHandle() {
	return *(Handle_BRep_TFace*) &$self;
	}
};

%nodefaultctor Handle_BRep_TFace;
class Handle_BRep_TFace : public Handle_TopoDS_TFace {

    public:
        // constructors
        Handle_BRep_TFace();
        Handle_BRep_TFace(const Handle_BRep_TFace &aHandle);
        Handle_BRep_TFace(const BRep_TFace *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_TFace DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TFace {
    BRep_TFace* GetObject() {
    return (BRep_TFace*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_TFace::~Handle_BRep_TFace %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_TFace {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_TVertex;
class BRep_TVertex : public TopoDS_TVertex {
	public:
		%feature("autodoc", "	:rtype: None
") BRep_TVertex;
		 BRep_TVertex ();
		%feature("autodoc", "	:rtype: float
") Tolerance;
		Standard_Real Tolerance ();
		%feature("autodoc", "	:param T:
	:type T: float
	:rtype: None
") Tolerance;
		void Tolerance (const Standard_Real T);
		%feature("autodoc", "	* Sets the tolerance to the max of <T> and the current tolerance.

	:param T:
	:type T: float
	:rtype: None
") UpdateTolerance;
		void UpdateTolerance (const Standard_Real T);
		%feature("autodoc", "	:rtype: gp_Pnt
") Pnt;
		const gp_Pnt  Pnt ();
		%feature("autodoc", "	:param P:
	:type P: gp_Pnt
	:rtype: None
") Pnt;
		void Pnt (const gp_Pnt & P);
		%feature("autodoc", "	:rtype: BRep_ListOfPointRepresentation
") Points;
		const BRep_ListOfPointRepresentation & Points ();
		%feature("autodoc", "	:rtype: BRep_ListOfPointRepresentation
") ChangePoints;
		BRep_ListOfPointRepresentation & ChangePoints ();
		%feature("autodoc", "	* Returns a copy of the TShape with no sub-shapes.

	:rtype: Handle_TopoDS_TShape
") EmptyCopy;
		Handle_TopoDS_TShape EmptyCopy ();
};


%feature("shadow") BRep_TVertex::~BRep_TVertex %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_TVertex {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_TVertex {
	Handle_BRep_TVertex GetHandle() {
	return *(Handle_BRep_TVertex*) &$self;
	}
};

%nodefaultctor Handle_BRep_TVertex;
class Handle_BRep_TVertex : public Handle_TopoDS_TVertex {

    public:
        // constructors
        Handle_BRep_TVertex();
        Handle_BRep_TVertex(const Handle_BRep_TVertex &aHandle);
        Handle_BRep_TVertex(const BRep_TVertex *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_TVertex DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_TVertex {
    BRep_TVertex* GetObject() {
    return (BRep_TVertex*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_TVertex::~Handle_BRep_TVertex %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_TVertex {
    void _kill_pointed() {
        delete $self;
    }
};

class BRep_Tool {
	public:
		%feature("autodoc", "	* Returns <True> if S if flaged Closed, if S is a Solid,Shell or Compound returns <True> is S has no free boundaries.

	:param S:
	:type S: TopoDS_Shape &
	:rtype: bool
") IsClosed;
		static Standard_Boolean IsClosed (const TopoDS_Shape & S);
		%feature("autodoc", "	* Returns the geometric surface of the face. Returns in <L> the location for the surface.

	:param F:
	:type F: TopoDS_Face &
	:param L:
	:type L: TopLoc_Location &
	:rtype: Handle_Geom_Surface
") Surface;
		static const Handle_Geom_Surface & Surface (const TopoDS_Face & F,TopLoc_Location & L);
		%feature("autodoc", "	* Returns the geometric surface of the face. It can be a copy if there is a Location.

	:param F:
	:type F: TopoDS_Face &
	:rtype: Handle_Geom_Surface
") Surface;
		static Handle_Geom_Surface Surface (const TopoDS_Face & F);
		%feature("autodoc", "	* Returns the Triangulation of the face. It is a null handle if there is no triangulation.

	:param F:
	:type F: TopoDS_Face &
	:param L:
	:type L: TopLoc_Location &
	:rtype: Handle_Poly_Triangulation
") Triangulation;
		static const Handle_Poly_Triangulation & Triangulation (const TopoDS_Face & F,TopLoc_Location & L);
		%feature("autodoc", "	* Returns the tolerance of the face.

	:param F:
	:type F: TopoDS_Face &
	:rtype: float
") Tolerance;
		static Standard_Real Tolerance (const TopoDS_Face & F);
		%feature("autodoc", "	* Returns the NaturalRestriction flag of the face.

	:param F:
	:type F: TopoDS_Face &
	:rtype: bool
") NaturalRestriction;
		static Standard_Boolean NaturalRestriction (const TopoDS_Face & F);
		%feature("autodoc", "	* Returns True if <E> is a 3d curve or a curve on surface.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") IsGeometric;
		static Standard_Boolean IsGeometric (const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns the 3D curve of the edge. May be a Null handle. Returns in <L> the location for the curve. In <First> and <Last> the parameter range.

	:param E:
	:type E: TopoDS_Edge &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: Handle_Geom_Curve
") Curve;
		static const Handle_Geom_Curve & Curve (const TopoDS_Edge & E,TopLoc_Location & L,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns the 3D curve of the edge. May be a Null handle. In <First> and <Last> the parameter range. It can be a copy if there is a Location.

	:param E:
	:type E: TopoDS_Edge &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: Handle_Geom_Curve
") Curve;
		static Handle_Geom_Curve Curve (const TopoDS_Edge & E,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns the 3D polygon of the edge. May be a Null handle. Returns in <L> the location for the polygon.

	:param E:
	:type E: TopoDS_Edge &
	:param L:
	:type L: TopLoc_Location &
	:rtype: Handle_Poly_Polygon3D
") Polygon3D;
		static const Handle_Poly_Polygon3D & Polygon3D (const TopoDS_Edge & E,TopLoc_Location & L);
		%feature("autodoc", "	* Returns the curve associated to the edge in the parametric space of the face. Returns a NULL handle if this curve does not exist. Returns in <First> and <Last> the parameter range.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: Handle_Geom2d_Curve
") CurveOnSurface;
		static Handle_Geom2d_Curve CurveOnSurface (const TopoDS_Edge & E,const TopoDS_Face & F,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns the curve associated to the edge in the parametric space of the surface. Returns a NULL handle if this curve does not exist. Returns in <First> and <Last> the parameter range.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: Handle_Geom2d_Curve
") CurveOnSurface;
		static Handle_Geom2d_Curve CurveOnSurface (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns in <C>, <S>, <L> a 2d curve, a surface and a location for the edge <E>. <C> and <S> are null if the edge has no curve on surface. Returns in <First> and <Last> the parameter range.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: void
") CurveOnSurface;
		static void CurveOnSurface (const TopoDS_Edge & E,Handle_Geom2d_Curve & C,Handle_Geom_Surface & S,TopLoc_Location & L,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Returns in <C>, <S>, <L> the 2d curve, the surface and the location for the edge <E> of rank <Index>. <C> and <S> are null if the index is out of range. Returns in <First> and <Last> the parameter range.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:param Index:
	:type Index: Standard_Integer
	:rtype: void
") CurveOnSurface;
		static void CurveOnSurface (const TopoDS_Edge & E,Handle_Geom2d_Curve & C,Handle_Geom_Surface & S,TopLoc_Location & L,Standard_Real &OutValue,Standard_Real &OutValue,const Standard_Integer Index);
		%feature("autodoc", "	* Returns the polygon associated to the edge in the parametric space of the face. Returns a NULL handle if this polygon does not exist.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:rtype: Handle_Poly_Polygon2D
") PolygonOnSurface;
		static Handle_Poly_Polygon2D PolygonOnSurface (const TopoDS_Edge & E,const TopoDS_Face & F);
		%feature("autodoc", "	* Returns the polygon associated to the edge in the parametric space of the surface. Returns a NULL handle if this polygon does not exist.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: Handle_Poly_Polygon2D
") PolygonOnSurface;
		static Handle_Poly_Polygon2D PolygonOnSurface (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns in <C>, <S>, <L> a 2d curve, a surface and a location for the edge <E>. <C> and <S> are null if the edge has no polygon on surface.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: void
") PolygonOnSurface;
		static void PolygonOnSurface (const TopoDS_Edge & E,Handle_Poly_Polygon2D & C,Handle_Geom_Surface & S,TopLoc_Location & L);
		%feature("autodoc", "	* Returns in <C>, <S>, <L> the 2d curve, the surface and the location for the edge <E> of rank <Index>. <C> and <S> are null if the index is out of range.

	:param E:
	:type E: TopoDS_Edge &
	:param C:
	:type C: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param Index:
	:type Index: Standard_Integer
	:rtype: void
") PolygonOnSurface;
		static void PolygonOnSurface (const TopoDS_Edge & E,Handle_Poly_Polygon2D & C,Handle_Geom_Surface & S,TopLoc_Location & L,const Standard_Integer Index);
		%feature("autodoc", "	* Returns the polygon associated to the edge in the parametric space of the face. Returns a NULL handle if this polygon does not exist.

	:param E:
	:type E: TopoDS_Edge &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: Handle_Poly_PolygonOnTriangulation
") PolygonOnTriangulation;
		static const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation (const TopoDS_Edge & E,const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns in <P>, <T>, <L> a polygon on triangulation, a triangulation and a location for the edge <E>. <P> and <T> are null if the edge has no polygon on triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: void
") PolygonOnTriangulation;
		static void PolygonOnTriangulation (const TopoDS_Edge & E,Handle_Poly_PolygonOnTriangulation & P,Handle_Poly_Triangulation & T,TopLoc_Location & L);
		%feature("autodoc", "	* Returns in <P>, <T>, <L> a polygon on triangulation, a triangulation and a location for the edge <E> for the range index. <C> and <S> are null if the edge has no polygon on triangulation.

	:param E:
	:type E: TopoDS_Edge &
	:param P:
	:type P: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:param Index:
	:type Index: Standard_Integer
	:rtype: void
") PolygonOnTriangulation;
		static void PolygonOnTriangulation (const TopoDS_Edge & E,Handle_Poly_PolygonOnTriangulation & P,Handle_Poly_Triangulation & T,TopLoc_Location & L,const Standard_Integer Index);
		%feature("autodoc", "	* Returns True if <E> has two PCurves in the parametric space of <F>. i.e. <F> is on a closed surface and <E> is on the closing curve.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:rtype: bool
") IsClosed;
		static Standard_Boolean IsClosed (const TopoDS_Edge & E,const TopoDS_Face & F);
		%feature("autodoc", "	* Returns True if <E> has two PCurves in the parametric space of <S>. i.e. <S> is a closed surface and <E> is on the closing curve.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsClosed;
		static Standard_Boolean IsClosed (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns True if <E> has two arrays of indices in the triangulation <T>.

	:param E:
	:type E: TopoDS_Edge &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:rtype: bool
") IsClosed;
		static Standard_Boolean IsClosed (const TopoDS_Edge & E,const Handle_Poly_Triangulation & T);
		%feature("autodoc", "	* Returns the tolerance for <E>.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: float
") Tolerance;
		static Standard_Real Tolerance (const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns the SameParameter flag for the edge.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") SameParameter;
		static Standard_Boolean SameParameter (const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns the SameRange flag for the edge.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") SameRange;
		static Standard_Boolean SameRange (const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns True if the edge is degenerated.

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") Degenerated;
		static Standard_Boolean Degenerated (const TopoDS_Edge & E);
		%feature("autodoc", "	* Gets the range of the 3d curve.

	:param E:
	:type E: TopoDS_Edge &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: void
") Range;
		static void Range (const TopoDS_Edge & E,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Gets the range of the edge on the pcurve on the surface.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: void
") Range;
		static void Range (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Gets the range of the edge on the pcurve on the face.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: void
") Range;
		static void Range (const TopoDS_Edge & E,const TopoDS_Face & F,Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	* Gets the UV locations of the extremities of the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param PFirst:
	:type PFirst: gp_Pnt2d
	:param PLast:
	:type PLast: gp_Pnt2d
	:rtype: void
") UVPoints;
		static void UVPoints (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,gp_Pnt2d & PFirst,gp_Pnt2d & PLast);
		%feature("autodoc", "	* Gets the UV locations of the extremities of the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param PFirst:
	:type PFirst: gp_Pnt2d
	:param PLast:
	:type PLast: gp_Pnt2d
	:rtype: void
") UVPoints;
		static void UVPoints (const TopoDS_Edge & E,const TopoDS_Face & F,gp_Pnt2d & PFirst,gp_Pnt2d & PLast);
		%feature("autodoc", "	* Sets the UV locations of the extremities of the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param PFirst:
	:type PFirst: gp_Pnt2d
	:param PLast:
	:type PLast: gp_Pnt2d
	:rtype: void
") SetUVPoints;
		static void SetUVPoints (const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L,const gp_Pnt2d & PFirst,const gp_Pnt2d & PLast);
		%feature("autodoc", "	* Sets the UV locations of the extremities of the edge.

	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:param PFirst:
	:type PFirst: gp_Pnt2d
	:param PLast:
	:type PLast: gp_Pnt2d
	:rtype: void
") SetUVPoints;
		static void SetUVPoints (const TopoDS_Edge & E,const TopoDS_Face & F,const gp_Pnt2d & PFirst,const gp_Pnt2d & PLast);
		%feature("autodoc", "	* Returns True if the edge is on the surfaces of the two faces.

	:param E:
	:type E: TopoDS_Edge &
	:param F1:
	:type F1: TopoDS_Face &
	:param F2:
	:type F2: TopoDS_Face &
	:rtype: bool
") HasContinuity;
		static Standard_Boolean HasContinuity (const TopoDS_Edge & E,const TopoDS_Face & F1,const TopoDS_Face & F2);
		%feature("autodoc", "	* Returns the continuity.

	:param E:
	:type E: TopoDS_Edge &
	:param F1:
	:type F1: TopoDS_Face &
	:param F2:
	:type F2: TopoDS_Face &
	:rtype: GeomAbs_Shape
") Continuity;
		static GeomAbs_Shape Continuity (const TopoDS_Edge & E,const TopoDS_Face & F1,const TopoDS_Face & F2);
		%feature("autodoc", "	* Returns True if the edge is on the surfaces.

	:param E:
	:type E: TopoDS_Edge &
	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:rtype: bool
") HasContinuity;
		static Standard_Boolean HasContinuity (const TopoDS_Edge & E,const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2);
		%feature("autodoc", "	* Returns the continuity.

	:param E:
	:type E: TopoDS_Edge &
	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:rtype: GeomAbs_Shape
") Continuity;
		static GeomAbs_Shape Continuity (const TopoDS_Edge & E,const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2);
		%feature("autodoc", "	* Returns True if the edge has regularity on some two surfaces

	:param E:
	:type E: TopoDS_Edge &
	:rtype: bool
") HasContinuity;
		static Standard_Boolean HasContinuity (const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns the 3d point.

	:param V:
	:type V: TopoDS_Vertex &
	:rtype: gp_Pnt
") Pnt;
		static gp_Pnt Pnt (const TopoDS_Vertex & V);
		%feature("autodoc", "	* Returns the tolerance.

	:param V:
	:type V: TopoDS_Vertex &
	:rtype: float
") Tolerance;
		static Standard_Real Tolerance (const TopoDS_Vertex & V);
		%feature("autodoc", "	* Returns the parameter of <V> on <E>.

	:param V:
	:type V: TopoDS_Vertex &
	:param E:
	:type E: TopoDS_Edge &
	:rtype: float
") Parameter;
		static Standard_Real Parameter (const TopoDS_Vertex & V,const TopoDS_Edge & E);
		%feature("autodoc", "	* Returns the parameters of the vertex on the pcurve of the edge on the face.

	:param V:
	:type V: TopoDS_Vertex &
	:param E:
	:type E: TopoDS_Edge &
	:param F:
	:type F: TopoDS_Face &
	:rtype: float
") Parameter;
		static Standard_Real Parameter (const TopoDS_Vertex & V,const TopoDS_Edge & E,const TopoDS_Face & F);
		%feature("autodoc", "	* Returns the parameters of the vertex on the pcurve of the edge on the surface.

	:param V:
	:type V: TopoDS_Vertex &
	:param E:
	:type E: TopoDS_Edge &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: float
") Parameter;
		static Standard_Real Parameter (const TopoDS_Vertex & V,const TopoDS_Edge & E,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns the parameters of the vertex on the face.

	:param V:
	:type V: TopoDS_Vertex &
	:param F:
	:type F: TopoDS_Face &
	:rtype: gp_Pnt2d
") Parameters;
		static gp_Pnt2d Parameters (const TopoDS_Vertex & V,const TopoDS_Face & F);
};


%feature("shadow") BRep_Tool::~BRep_Tool %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_Tool {
	void _kill_pointed() {
		delete $self;
	}
};
%nodefaultctor BRep_CurveOn2Surfaces;
class BRep_CurveOn2Surfaces : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:param C:
	:type C: GeomAbs_Shape
	:rtype: None
") BRep_CurveOn2Surfaces;
		 BRep_CurveOn2Surfaces (const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2,const GeomAbs_Shape C);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity ();
		%feature("autodoc", "	* A curve on two surfaces (continuity).

	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity (const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2);
		%feature("autodoc", "	* Raises an error.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt & P);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface2;
		virtual const Handle_Geom_Surface & Surface2 ();
		%feature("autodoc", "	:rtype: TopLoc_Location
") Location2;
		virtual const TopLoc_Location & Location2 ();
		%feature("autodoc", "	:rtype: GeomAbs_Shape
") Continuity;
		virtual const GeomAbs_Shape & Continuity ();
		%feature("autodoc", "	:param C:
	:type C: GeomAbs_Shape
	:rtype: void
") Continuity;
		virtual void Continuity (const GeomAbs_Shape C);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_CurveOn2Surfaces::~BRep_CurveOn2Surfaces %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_CurveOn2Surfaces {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_CurveOn2Surfaces {
	Handle_BRep_CurveOn2Surfaces GetHandle() {
	return *(Handle_BRep_CurveOn2Surfaces*) &$self;
	}
};

%nodefaultctor Handle_BRep_CurveOn2Surfaces;
class Handle_BRep_CurveOn2Surfaces : public Handle_BRep_CurveRepresentation {

    public:
        // constructors
        Handle_BRep_CurveOn2Surfaces();
        Handle_BRep_CurveOn2Surfaces(const Handle_BRep_CurveOn2Surfaces &aHandle);
        Handle_BRep_CurveOn2Surfaces(const BRep_CurveOn2Surfaces *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_CurveOn2Surfaces DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOn2Surfaces {
    BRep_CurveOn2Surfaces* GetObject() {
    return (BRep_CurveOn2Surfaces*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_CurveOn2Surfaces::~Handle_BRep_CurveOn2Surfaces %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_CurveOn2Surfaces {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_GCurve;
class BRep_GCurve : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "	:param First:
	:type First: float
	:param Last:
	:type Last: float
	:rtype: None
") SetRange;
		void SetRange (const Standard_Real First,const Standard_Real Last);
		%feature("autodoc", "	:param First:
	:type First: float &
	:param Last:
	:type Last: float &
	:rtype: None
") Range;
		void Range (Standard_Real &OutValue,Standard_Real &OutValue);
		%feature("autodoc", "	:rtype: float
") First;
		Standard_Real First ();
		%feature("autodoc", "	:rtype: float
") Last;
		Standard_Real Last ();
		%feature("autodoc", "	:param F:
	:type F: float
	:rtype: None
") First;
		void First (const Standard_Real F);
		%feature("autodoc", "	:param L:
	:type L: float
	:rtype: None
") Last;
		void Last (const Standard_Real L);
		%feature("autodoc", "	* Computes the point at parameter U.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt
	:rtype: void
") D0;
		virtual void D0 (const Standard_Real U,gp_Pnt & P);
		%feature("autodoc", "	* Recomputes any derived data after a modification. This is called when the range is modified.

	:rtype: void
") Update;
		virtual void Update ();
};


%feature("shadow") BRep_GCurve::~BRep_GCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_GCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_GCurve {
	Handle_BRep_GCurve GetHandle() {
	return *(Handle_BRep_GCurve*) &$self;
	}
};

%nodefaultctor Handle_BRep_GCurve;
class Handle_BRep_GCurve : public Handle_BRep_CurveRepresentation {

    public:
        // constructors
        Handle_BRep_GCurve();
        Handle_BRep_GCurve(const Handle_BRep_GCurve &aHandle);
        Handle_BRep_GCurve(const BRep_GCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_GCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_GCurve {
    BRep_GCurve* GetObject() {
    return (BRep_GCurve*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_GCurve::~Handle_BRep_GCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_GCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PointOnCurve;
class BRep_PointOnCurve : public BRep_PointRepresentation {
	public:
		%feature("autodoc", "	:param P:
	:type P: float
	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PointOnCurve;
		 BRep_PointOnCurve (const Standard_Real P,const Handle_Geom_Curve & C,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns True

	:rtype: bool
") IsPointOnCurve;
		virtual Standard_Boolean IsPointOnCurve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnCurve;
		virtual Standard_Boolean IsPointOnCurve (const Handle_Geom_Curve & C,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: Handle_Geom_Curve
") Curve;
		virtual const Handle_Geom_Curve & Curve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:rtype: void
") Curve;
		virtual void Curve (const Handle_Geom_Curve & C);
};


%feature("shadow") BRep_PointOnCurve::~BRep_PointOnCurve %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PointOnCurve {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PointOnCurve {
	Handle_BRep_PointOnCurve GetHandle() {
	return *(Handle_BRep_PointOnCurve*) &$self;
	}
};

%nodefaultctor Handle_BRep_PointOnCurve;
class Handle_BRep_PointOnCurve : public Handle_BRep_PointRepresentation {

    public:
        // constructors
        Handle_BRep_PointOnCurve();
        Handle_BRep_PointOnCurve(const Handle_BRep_PointOnCurve &aHandle);
        Handle_BRep_PointOnCurve(const BRep_PointOnCurve *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PointOnCurve DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnCurve {
    BRep_PointOnCurve* GetObject() {
    return (BRep_PointOnCurve*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PointOnCurve::~Handle_BRep_PointOnCurve %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PointOnCurve {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PointsOnSurface;
class BRep_PointsOnSurface : public BRep_PointRepresentation {
	public:
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:param S:
	:type S: Handle_Geom_Surface &
	:rtype: void
") Surface;
		virtual void Surface (const Handle_Geom_Surface & S);
};


%feature("shadow") BRep_PointsOnSurface::~BRep_PointsOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PointsOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PointsOnSurface {
	Handle_BRep_PointsOnSurface GetHandle() {
	return *(Handle_BRep_PointsOnSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_PointsOnSurface;
class Handle_BRep_PointsOnSurface : public Handle_BRep_PointRepresentation {

    public:
        // constructors
        Handle_BRep_PointsOnSurface();
        Handle_BRep_PointsOnSurface(const Handle_BRep_PointsOnSurface &aHandle);
        Handle_BRep_PointsOnSurface(const BRep_PointsOnSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PointsOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointsOnSurface {
    BRep_PointsOnSurface* GetObject() {
    return (BRep_PointsOnSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PointsOnSurface::~Handle_BRep_PointsOnSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PointsOnSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_Polygon3D;
class BRep_Polygon3D : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon3D &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_Polygon3D;
		 BRep_Polygon3D (const Handle_Poly_Polygon3D & P,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsPolygon3D;
		virtual Standard_Boolean IsPolygon3D ();
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon3D
") Polygon3D;
		virtual const Handle_Poly_Polygon3D & Polygon3D ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon3D &
	:rtype: void
") Polygon3D;
		virtual void Polygon3D (const Handle_Poly_Polygon3D & P);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_Polygon3D::~BRep_Polygon3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_Polygon3D {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_Polygon3D {
	Handle_BRep_Polygon3D GetHandle() {
	return *(Handle_BRep_Polygon3D*) &$self;
	}
};

%nodefaultctor Handle_BRep_Polygon3D;
class Handle_BRep_Polygon3D : public Handle_BRep_CurveRepresentation {

    public:
        // constructors
        Handle_BRep_Polygon3D();
        Handle_BRep_Polygon3D(const Handle_BRep_Polygon3D &aHandle);
        Handle_BRep_Polygon3D(const BRep_Polygon3D *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_Polygon3D DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_Polygon3D {
    BRep_Polygon3D* GetObject() {
    return (BRep_Polygon3D*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_Polygon3D::~Handle_BRep_Polygon3D %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_Polygon3D {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PolygonOnSurface;
class BRep_PolygonOnSurface : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PolygonOnSurface;
		 BRep_PolygonOnSurface (const Handle_Poly_Polygon2D & P,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* A 2D polygon representation in the parametric space of a surface.

	:rtype: bool
") IsPolygonOnSurface;
		virtual Standard_Boolean IsPolygonOnSurface ();
		%feature("autodoc", "	* A 2D polygon representation in the parametric space of a surface.

	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPolygonOnSurface;
		virtual Standard_Boolean IsPolygonOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon2D
") Polygon;
		virtual const Handle_Poly_Polygon2D & Polygon ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon2D &
	:rtype: void
") Polygon;
		virtual void Polygon (const Handle_Poly_Polygon2D & P);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_PolygonOnSurface::~BRep_PolygonOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PolygonOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PolygonOnSurface {
	Handle_BRep_PolygonOnSurface GetHandle() {
	return *(Handle_BRep_PolygonOnSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_PolygonOnSurface;
class Handle_BRep_PolygonOnSurface : public Handle_BRep_CurveRepresentation {

    public:
        // constructors
        Handle_BRep_PolygonOnSurface();
        Handle_BRep_PolygonOnSurface(const Handle_BRep_PolygonOnSurface &aHandle);
        Handle_BRep_PolygonOnSurface(const BRep_PolygonOnSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PolygonOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnSurface {
    BRep_PolygonOnSurface* GetObject() {
    return (BRep_PolygonOnSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PolygonOnSurface::~Handle_BRep_PolygonOnSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PolygonOnSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PolygonOnTriangulation;
class BRep_PolygonOnTriangulation : public BRep_CurveRepresentation {
	public:
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_PolygonOnTriangulation &
	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PolygonOnTriangulation;
		 BRep_PolygonOnTriangulation (const Handle_Poly_PolygonOnTriangulation & P,const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* returns True.

	:rtype: bool
") IsPolygonOnTriangulation;
		virtual Standard_Boolean IsPolygonOnTriangulation ();
		%feature("autodoc", "	* Is it a polygon in the definition of <T> with location <L>.

	:param T:
	:type T: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPolygonOnTriangulation;
		virtual Standard_Boolean IsPolygonOnTriangulation (const Handle_Poly_Triangulation & T,const TopLoc_Location & L);
		%feature("autodoc", "	* returns True.

	:param P:
	:type P: Handle_Poly_PolygonOnTriangulation &
	:rtype: void
") PolygonOnTriangulation;
		virtual void PolygonOnTriangulation (const Handle_Poly_PolygonOnTriangulation & P);
		%feature("autodoc", "	:rtype: Handle_Poly_Triangulation
") Triangulation;
		virtual const Handle_Poly_Triangulation & Triangulation ();
		%feature("autodoc", "	:rtype: Handle_Poly_PolygonOnTriangulation
") PolygonOnTriangulation;
		virtual const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation ();
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_PolygonOnTriangulation::~BRep_PolygonOnTriangulation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PolygonOnTriangulation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PolygonOnTriangulation {
	Handle_BRep_PolygonOnTriangulation GetHandle() {
	return *(Handle_BRep_PolygonOnTriangulation*) &$self;
	}
};

%nodefaultctor Handle_BRep_PolygonOnTriangulation;
class Handle_BRep_PolygonOnTriangulation : public Handle_BRep_CurveRepresentation {

    public:
        // constructors
        Handle_BRep_PolygonOnTriangulation();
        Handle_BRep_PolygonOnTriangulation(const Handle_BRep_PolygonOnTriangulation &aHandle);
        Handle_BRep_PolygonOnTriangulation(const BRep_PolygonOnTriangulation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PolygonOnTriangulation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnTriangulation {
    BRep_PolygonOnTriangulation* GetObject() {
    return (BRep_PolygonOnTriangulation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PolygonOnTriangulation::~Handle_BRep_PolygonOnTriangulation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PolygonOnTriangulation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_Curve3D;
class BRep_Curve3D : public BRep_GCurve {
	public:
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_Curve3D;
		 BRep_Curve3D (const Handle_Geom_Curve & C,const TopLoc_Location & L);
		%feature("autodoc", "	* Computes the point at parameter U.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt & P);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsCurve3D;
		virtual Standard_Boolean IsCurve3D ();
		%feature("autodoc", "	:rtype: Handle_Geom_Curve
") Curve3D;
		virtual const Handle_Geom_Curve & Curve3D ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom_Curve &
	:rtype: void
") Curve3D;
		virtual void Curve3D (const Handle_Geom_Curve & C);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_Curve3D::~BRep_Curve3D %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_Curve3D {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_Curve3D {
	Handle_BRep_Curve3D GetHandle() {
	return *(Handle_BRep_Curve3D*) &$self;
	}
};

%nodefaultctor Handle_BRep_Curve3D;
class Handle_BRep_Curve3D : public Handle_BRep_GCurve {

    public:
        // constructors
        Handle_BRep_Curve3D();
        Handle_BRep_Curve3D(const Handle_BRep_Curve3D &aHandle);
        Handle_BRep_Curve3D(const BRep_Curve3D *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_Curve3D DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_Curve3D {
    BRep_Curve3D* GetObject() {
    return (BRep_Curve3D*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_Curve3D::~Handle_BRep_Curve3D %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_Curve3D {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_CurveOnSurface;
class BRep_CurveOnSurface : public BRep_GCurve {
	public:
		%feature("autodoc", "	:param PC:
	:type PC: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_CurveOnSurface;
		 BRep_CurveOnSurface (const Handle_Geom2d_Curve & PC,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") SetUVPoints;
		void SetUVPoints (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") UVPoints;
		void UVPoints (gp_Pnt2d & P1,gp_Pnt2d & P2);
		%feature("autodoc", "	* Computes the point at parameter U.

	:param U:
	:type U: float
	:param P:
	:type P: gp_Pnt
	:rtype: None
") D0;
		void D0 (const Standard_Real U,gp_Pnt & P);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsCurveOnSurface;
		virtual Standard_Boolean IsCurveOnSurface ();
		%feature("autodoc", "	* A curve in the parametric space of a surface.

	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsCurveOnSurface;
		virtual Standard_Boolean IsCurveOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: Handle_Geom_Surface
") Surface;
		virtual const Handle_Geom_Surface & Surface ();
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve;
		virtual const Handle_Geom2d_Curve & PCurve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve;
		virtual void PCurve (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
		%feature("autodoc", "	* Recomputes any derived data after a modification. This is called when the range is modified.

	:rtype: void
") Update;
		virtual void Update ();
};


%feature("shadow") BRep_CurveOnSurface::~BRep_CurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_CurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_CurveOnSurface {
	Handle_BRep_CurveOnSurface GetHandle() {
	return *(Handle_BRep_CurveOnSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_CurveOnSurface;
class Handle_BRep_CurveOnSurface : public Handle_BRep_GCurve {

    public:
        // constructors
        Handle_BRep_CurveOnSurface();
        Handle_BRep_CurveOnSurface(const Handle_BRep_CurveOnSurface &aHandle);
        Handle_BRep_CurveOnSurface(const BRep_CurveOnSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_CurveOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOnSurface {
    BRep_CurveOnSurface* GetObject() {
    return (BRep_CurveOnSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_CurveOnSurface::~Handle_BRep_CurveOnSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_CurveOnSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PointOnCurveOnSurface;
class BRep_PointOnCurveOnSurface : public BRep_PointsOnSurface {
	public:
		%feature("autodoc", "	:param P:
	:type P: float
	:param C:
	:type C: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PointOnCurveOnSurface;
		 BRep_PointOnCurveOnSurface (const Standard_Real P,const Handle_Geom2d_Curve & C,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns True

	:rtype: bool
") IsPointOnCurveOnSurface;
		virtual Standard_Boolean IsPointOnCurveOnSurface ();
		%feature("autodoc", "	:param PC:
	:type PC: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnCurveOnSurface;
		virtual Standard_Boolean IsPointOnCurveOnSurface (const Handle_Geom2d_Curve & PC,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve;
		virtual const Handle_Geom2d_Curve & PCurve ();
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve;
		virtual void PCurve (const Handle_Geom2d_Curve & C);
};


%feature("shadow") BRep_PointOnCurveOnSurface::~BRep_PointOnCurveOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PointOnCurveOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PointOnCurveOnSurface {
	Handle_BRep_PointOnCurveOnSurface GetHandle() {
	return *(Handle_BRep_PointOnCurveOnSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_PointOnCurveOnSurface;
class Handle_BRep_PointOnCurveOnSurface : public Handle_BRep_PointsOnSurface {

    public:
        // constructors
        Handle_BRep_PointOnCurveOnSurface();
        Handle_BRep_PointOnCurveOnSurface(const Handle_BRep_PointOnCurveOnSurface &aHandle);
        Handle_BRep_PointOnCurveOnSurface(const BRep_PointOnCurveOnSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PointOnCurveOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnCurveOnSurface {
    BRep_PointOnCurveOnSurface* GetObject() {
    return (BRep_PointOnCurveOnSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PointOnCurveOnSurface::~Handle_BRep_PointOnCurveOnSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PointOnCurveOnSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PointOnSurface;
class BRep_PointOnSurface : public BRep_PointsOnSurface {
	public:
		%feature("autodoc", "	:param P1:
	:type P1: float
	:param P2:
	:type P2: float
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PointOnSurface;
		 BRep_PointOnSurface (const Standard_Real P1,const Standard_Real P2,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: bool
") IsPointOnSurface;
		virtual Standard_Boolean IsPointOnSurface ();
		%feature("autodoc", "	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: bool
") IsPointOnSurface;
		virtual Standard_Boolean IsPointOnSurface (const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	:rtype: float
") Parameter2;
		virtual Standard_Real Parameter2 ();
		%feature("autodoc", "	:param P:
	:type P: float
	:rtype: void
") Parameter2;
		virtual void Parameter2 (const Standard_Real P);
};


%feature("shadow") BRep_PointOnSurface::~BRep_PointOnSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PointOnSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PointOnSurface {
	Handle_BRep_PointOnSurface GetHandle() {
	return *(Handle_BRep_PointOnSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_PointOnSurface;
class Handle_BRep_PointOnSurface : public Handle_BRep_PointsOnSurface {

    public:
        // constructors
        Handle_BRep_PointOnSurface();
        Handle_BRep_PointOnSurface(const Handle_BRep_PointOnSurface &aHandle);
        Handle_BRep_PointOnSurface(const BRep_PointOnSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PointOnSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PointOnSurface {
    BRep_PointOnSurface* GetObject() {
    return (BRep_PointOnSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PointOnSurface::~Handle_BRep_PointOnSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PointOnSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PolygonOnClosedSurface;
class BRep_PolygonOnClosedSurface : public BRep_PolygonOnSurface {
	public:
		%feature("autodoc", "	:param P1:
	:type P1: Handle_Poly_Polygon2D &
	:param P2:
	:type P2: Handle_Poly_Polygon2D &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PolygonOnClosedSurface;
		 BRep_PolygonOnClosedSurface (const Handle_Poly_Polygon2D & P1,const Handle_Poly_Polygon2D & P2,const Handle_Geom_Surface & S,const TopLoc_Location & L);
		%feature("autodoc", "	* returns True.

	:rtype: bool
") IsPolygonOnClosedSurface;
		virtual Standard_Boolean IsPolygonOnClosedSurface ();
		%feature("autodoc", "	:rtype: Handle_Poly_Polygon2D
") Polygon2;
		virtual const Handle_Poly_Polygon2D & Polygon2 ();
		%feature("autodoc", "	:param P:
	:type P: Handle_Poly_Polygon2D &
	:rtype: void
") Polygon2;
		virtual void Polygon2 (const Handle_Poly_Polygon2D & P);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_PolygonOnClosedSurface::~BRep_PolygonOnClosedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PolygonOnClosedSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PolygonOnClosedSurface {
	Handle_BRep_PolygonOnClosedSurface GetHandle() {
	return *(Handle_BRep_PolygonOnClosedSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_PolygonOnClosedSurface;
class Handle_BRep_PolygonOnClosedSurface : public Handle_BRep_PolygonOnSurface {

    public:
        // constructors
        Handle_BRep_PolygonOnClosedSurface();
        Handle_BRep_PolygonOnClosedSurface(const Handle_BRep_PolygonOnClosedSurface &aHandle);
        Handle_BRep_PolygonOnClosedSurface(const BRep_PolygonOnClosedSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PolygonOnClosedSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnClosedSurface {
    BRep_PolygonOnClosedSurface* GetObject() {
    return (BRep_PolygonOnClosedSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PolygonOnClosedSurface::~Handle_BRep_PolygonOnClosedSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PolygonOnClosedSurface {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_PolygonOnClosedTriangulation;
class BRep_PolygonOnClosedTriangulation : public BRep_PolygonOnTriangulation {
	public:
		%feature("autodoc", "	:param P1:
	:type P1: Handle_Poly_PolygonOnTriangulation &
	:param P2:
	:type P2: Handle_Poly_PolygonOnTriangulation &
	:param Tr:
	:type Tr: Handle_Poly_Triangulation &
	:param L:
	:type L: TopLoc_Location &
	:rtype: None
") BRep_PolygonOnClosedTriangulation;
		 BRep_PolygonOnClosedTriangulation (const Handle_Poly_PolygonOnTriangulation & P1,const Handle_Poly_PolygonOnTriangulation & P2,const Handle_Poly_Triangulation & Tr,const TopLoc_Location & L);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsPolygonOnClosedTriangulation;
		virtual Standard_Boolean IsPolygonOnClosedTriangulation ();
		%feature("autodoc", "	:param P2:
	:type P2: Handle_Poly_PolygonOnTriangulation &
	:rtype: void
") PolygonOnTriangulation2;
		virtual void PolygonOnTriangulation2 (const Handle_Poly_PolygonOnTriangulation & P2);
		%feature("autodoc", "	:rtype: Handle_Poly_PolygonOnTriangulation
") PolygonOnTriangulation2;
		virtual const Handle_Poly_PolygonOnTriangulation & PolygonOnTriangulation2 ();
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
};


%feature("shadow") BRep_PolygonOnClosedTriangulation::~BRep_PolygonOnClosedTriangulation %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_PolygonOnClosedTriangulation {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_PolygonOnClosedTriangulation {
	Handle_BRep_PolygonOnClosedTriangulation GetHandle() {
	return *(Handle_BRep_PolygonOnClosedTriangulation*) &$self;
	}
};

%nodefaultctor Handle_BRep_PolygonOnClosedTriangulation;
class Handle_BRep_PolygonOnClosedTriangulation : public Handle_BRep_PolygonOnTriangulation {

    public:
        // constructors
        Handle_BRep_PolygonOnClosedTriangulation();
        Handle_BRep_PolygonOnClosedTriangulation(const Handle_BRep_PolygonOnClosedTriangulation &aHandle);
        Handle_BRep_PolygonOnClosedTriangulation(const BRep_PolygonOnClosedTriangulation *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_PolygonOnClosedTriangulation DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_PolygonOnClosedTriangulation {
    BRep_PolygonOnClosedTriangulation* GetObject() {
    return (BRep_PolygonOnClosedTriangulation*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_PolygonOnClosedTriangulation::~Handle_BRep_PolygonOnClosedTriangulation %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_PolygonOnClosedTriangulation {
    void _kill_pointed() {
        delete $self;
    }
};

%nodefaultctor BRep_CurveOnClosedSurface;
class BRep_CurveOnClosedSurface : public BRep_CurveOnSurface {
	public:
		%feature("autodoc", "	:param PC1:
	:type PC1: Handle_Geom2d_Curve &
	:param PC2:
	:type PC2: Handle_Geom2d_Curve &
	:param S:
	:type S: Handle_Geom_Surface &
	:param L:
	:type L: TopLoc_Location &
	:param C:
	:type C: GeomAbs_Shape
	:rtype: None
") BRep_CurveOnClosedSurface;
		 BRep_CurveOnClosedSurface (const Handle_Geom2d_Curve & PC1,const Handle_Geom2d_Curve & PC2,const Handle_Geom_Surface & S,const TopLoc_Location & L,const GeomAbs_Shape C);
		%feature("autodoc", "	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") SetUVPoints2;
		void SetUVPoints2 (const gp_Pnt2d & P1,const gp_Pnt2d & P2);
		%feature("autodoc", "	:param P1:
	:type P1: gp_Pnt2d
	:param P2:
	:type P2: gp_Pnt2d
	:rtype: None
") UVPoints2;
		void UVPoints2 (gp_Pnt2d & P1,gp_Pnt2d & P2);
		%feature("autodoc", "	* Returns True.

	:rtype: bool
") IsCurveOnClosedSurface;
		virtual Standard_Boolean IsCurveOnClosedSurface ();
		%feature("autodoc", "	* Returns True

	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity ();
		%feature("autodoc", "	* A curve on two surfaces (continuity).

	:param S1:
	:type S1: Handle_Geom_Surface &
	:param S2:
	:type S2: Handle_Geom_Surface &
	:param L1:
	:type L1: TopLoc_Location &
	:param L2:
	:type L2: TopLoc_Location &
	:rtype: bool
") IsRegularity;
		virtual Standard_Boolean IsRegularity (const Handle_Geom_Surface & S1,const Handle_Geom_Surface & S2,const TopLoc_Location & L1,const TopLoc_Location & L2);
		%feature("autodoc", "	:rtype: Handle_Geom2d_Curve
") PCurve2;
		virtual const Handle_Geom2d_Curve & PCurve2 ();
		%feature("autodoc", "	* Returns Surface()

	:rtype: Handle_Geom_Surface
") Surface2;
		virtual const Handle_Geom_Surface & Surface2 ();
		%feature("autodoc", "	* Returns Location()

	:rtype: TopLoc_Location
") Location2;
		virtual const TopLoc_Location & Location2 ();
		%feature("autodoc", "	:rtype: GeomAbs_Shape
") Continuity;
		virtual const GeomAbs_Shape & Continuity ();
		%feature("autodoc", "	:param C:
	:type C: GeomAbs_Shape
	:rtype: void
") Continuity;
		virtual void Continuity (const GeomAbs_Shape C);
		%feature("autodoc", "	:param C:
	:type C: Handle_Geom2d_Curve &
	:rtype: void
") PCurve2;
		virtual void PCurve2 (const Handle_Geom2d_Curve & C);
		%feature("autodoc", "	* Return a copy of this representation.

	:rtype: Handle_BRep_CurveRepresentation
") Copy;
		virtual Handle_BRep_CurveRepresentation Copy ();
		%feature("autodoc", "	* Recomputes any derived data after a modification. This is called when the range is modified.

	:rtype: void
") Update;
		virtual void Update ();
};


%feature("shadow") BRep_CurveOnClosedSurface::~BRep_CurveOnClosedSurface %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend BRep_CurveOnClosedSurface {
	void _kill_pointed() {
		delete $self;
	}
};
%extend BRep_CurveOnClosedSurface {
	Handle_BRep_CurveOnClosedSurface GetHandle() {
	return *(Handle_BRep_CurveOnClosedSurface*) &$self;
	}
};

%nodefaultctor Handle_BRep_CurveOnClosedSurface;
class Handle_BRep_CurveOnClosedSurface : public Handle_BRep_CurveOnSurface {

    public:
        // constructors
        Handle_BRep_CurveOnClosedSurface();
        Handle_BRep_CurveOnClosedSurface(const Handle_BRep_CurveOnClosedSurface &aHandle);
        Handle_BRep_CurveOnClosedSurface(const BRep_CurveOnClosedSurface *anItem);
        void Nullify();
        Standard_Boolean IsNull() const;
        static const Handle_BRep_CurveOnClosedSurface DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRep_CurveOnClosedSurface {
    BRep_CurveOnClosedSurface* GetObject() {
    return (BRep_CurveOnClosedSurface*)$self->Access();
    }
};
%feature("shadow") Handle_BRep_CurveOnClosedSurface::~Handle_BRep_CurveOnClosedSurface %{
def __del__(self):
    try:
        self.thisown = False
        GarbageCollector.garbage.collect_object(self)
    except:
        pass
%}

%extend Handle_BRep_CurveOnClosedSurface {
    void _kill_pointed() {
        delete $self;
    }
};

