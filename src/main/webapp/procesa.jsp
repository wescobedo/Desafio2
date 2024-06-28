<%@page import="cl.praxis.modelo.Habitacion"%>
<%@page import="cl.praxis.modelo.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Recepcion valores dede request
String nombreComprador = request.getParameter("nombre");
String apellidoComprador = request.getParameter("apellido");
String mailComprador = request.getParameter("email");
String medioPago = request.getParameter("medioPago");
int dias = Integer.parseInt(request.getParameter("dias"));
String fechaEntrada = request.getParameter("fechaentrada");
int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));

// Librerias requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// incializa Objeto Habitacion
Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

// Busca y recoge informacion de evento seleccionado
habitacion = habitacionb.getEventobyID(habitacion);

// Obtiene el valor a pagar por la cantidad de tickets seleccionados
int valorPagar = habitacionb.calculaValorCompra(habitacion.getPrecio(), dias);
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
						Detalle Solictud Habitacion: <strong><%=habitacion.getNombre()%></strong>
					</h1>
					<hr/ >
				</div>
			</div>

			<div class="container px-4 px-lg-5 mt-5">

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
							<td>Nombre</td>
							<td><%=nombreComprador%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellidoComprador%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Mail</td>
							<td><%=mailComprador%></td>
						</tr>

						<tr>
							<th scope="row">4</th>
							<td>Madio Pago</td>
							<td><%=medioPago%></td>
						</tr>

						<tr>
							<th scope="row">5</th>
							<td>Dias</td>
							<td><%=dias%></td>
						</tr>

						<tr>
							<th scope="row">5</th>
							<td>Fecha Entrada</td>
							<td><%=fechaEntrada%></td>
						</tr>


						<tr>
							<th scope="row">6</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
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