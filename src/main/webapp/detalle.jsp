<%@page import="cl.praxis.modelo.Habitacion"%>
<%@page import="cl.praxis.modelo.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Recepcion valores dede request
int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));

// Librerias requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// Crea Evento
Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

// Busca evento
habitacion = habitacionb.getEventobyID(habitacion);
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>

	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="row justify-content-center">
					<h1>
						Detalle Habitacion: <strong><%=habitacion.getNombre()%></strong>
					</h1>
					<hr />
				</div>
			</div>

			<div class="container px-4 px-lg-5 mt-5">

				<img class="card-img-top" src="<%=habitacion.getImagen()%>"
					alt="<%=habitacion.getNombre()%>" />

				<hr />

				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre Habitacion</td>
							<td><%=habitacion.getNombre()%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Descripción</td>
							<td><%=habitacion.getDescripcion()%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Precio</td>
							<td>CL$ <%=habitacion.getPrecio()%></td>
						</tr>

						

						

					</tbody>
				</table>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

</body>
</html>