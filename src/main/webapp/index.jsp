<%@page import="java.util.List"%>
<%@page import="cl.praxis.modelo.Habitacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.praxis.modelo.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

HabitacionBusiness habitacionb = new HabitacionBusiness();

List<Habitacion> listaHabitaciones = habitacionb.getHabitaciones();
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
						Habitaciones Disponibles (<%=listaHabitaciones.size()%>)
					</h1>
					<hr/ >
				</div>

				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					<%
					for (int x = 0; x < listaHabitaciones.size(); x++) {
					%>

					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="<%=listaHabitaciones.get(x).getImagen()%>"
								alt="<%=listaHabitaciones.get(x).getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder"><%=listaHabitaciones.get(x).getNombre()%></h5>
									<p><%=listaHabitaciones.get(x).getDescripcion()%></p>
									CL$
									<%=listaHabitaciones.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="html" name="idhabitacion"
								value="<%=listaHabitaciones.get(x).getId()%>" checked>  
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										href="detalle.jsp?idhabitacion=<%=listaHabitaciones.get(x).getId()%>">Ver
										Detalle Habitacion</a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>

				</div>
			</div>
		</section>

		<!--  Formulario -->
		<section>

			<div class="container px-4 px-lg-5 mt-5">

				<h1>Información de Reserva Habitacion</h1>
				<hr />

				<div class="row g-3">
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Nombre</label> <input
							type="text" class="form-control" id="nombre" name="nombre"
							value="Marcelo">
					</div>
					<div class="col-md-6">
						<label for="inputPassword4" class="form-label">Apellido</label> <input
							type="text" class="form-control" id="apellido" name="apellido"
							value="Salas Melinao">
					</div>

					<div class="col-md-6">
						<label for="inputCity" class="form-label">Email</label> <input
							type="text" class="form-control" id="email" name="email"
							value="ms@gmail.com">
					</div>

					<div class="col-md-2">
						<label for="inputZip" class="form-label">MedioPago</label> 
						<select id="medioPago" name="medioPago" class="form-select">
							<option> Contado
							</option>
							
							<option> Tarjetas bancarias
							</option>
						
						</select>																				
					</div>

					
					<div class="col-md-4">
						<label for="inputState" class="form-label">Dias</label> 
						 <select id="dias" name="dias" class="form-select">
							<%
							for (int x = 0; x < 31; x++) {
							%>
							<option value="<%=x + 1%>"><%=x + 1%> Dia(s)
							</option>
							<%
							}
							%>

						</select>
					</div>






					<div class="col-md-2">
						<label for="inputZip" class="form-label">FechaEntrada</label> <input
							type="date" class="form-control" id="fechaEntrada" name="fechaEntrada"
							value="22-07-2024">
					</div>
					

					<div class="col-12">
						<hr />
						<button type="submit" class="btn btn-primary">Enviar
							Solicitud de Compra</button>
					</div>
				</div>

			</div>

		</section>

		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

</body>
</html>