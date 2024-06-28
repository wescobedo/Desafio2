package cl.praxis.modelo;
import java.util.ArrayList;
import java.util.List;



public class HabitacionBusiness {
	
	
	public List<Habitacion> getHabitaciones() {

		// Inicializacion de lista de eventos
		ArrayList<Habitacion> habitaciones = new ArrayList<Habitacion>();

		// Info Habitacion 1
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Habitacion 1, Simple");
		habitacion1.setDescripcion("Habitacion Clasica con cama extragrande");
		habitacion1.setImagen(
				"https://media.gettyimages.com/id/1370825295/es/foto/moderna-habitaci%C3%B3n-de-hotel-con-cama-doble-mesas-de-noche-televisor-y-paisaje-urbano-desde-la.jpg?s=612x612&w=0&k=20&c=TvQ3P2DNP_3Y_owum8au9db1XmTbaaH5Pdt1aEmjUgI=");
		habitacion1.setPrecio(10000);
		habitacion1.setHabitaciones(1);
		habitacion1.setMetraje(10);
				
		// Info Habitacion 2
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Habitacion clasica con 2 camas grandes o dobles");
		habitacion2.setDescripcion("DescripciÃ³n Uno");
		habitacion2.setImagen(
				"https://media.gettyimages.com/id/1318363878/es/foto/interior-de-dormitorio-moderno-de-lujo-por-la-noche.jpg?s=612x612&w=0&k=20&c=n1noHicRK7-ZN9XXiwfhs79prjlhkysrDUBIY7JmJ7Q=");
		habitacion2.setPrecio(20000);
		habitacion2.setHabitaciones(1);
		habitacion2.setMetraje(20);
		
		// Info Habitacion 3
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Habitacion 3, Doble Normal");
		habitacion3.setDescripcion("Habitacion superior en planta alta con 2 camas dobles");
		habitacion3.setImagen(
				"https://media.gettyimages.com/id/1300135335/es/foto/lujoso-interior-del-dormitorio-en-nigh-con-cama-desordenada-sillones-de-cuero-armario-y-vistas.jpg?s=612x612&w=0&k=20&c=1xd9olcPki36I9HHruzcd2AW1qU4UkF5Vwn_KuPp-Yw=	");
		habitacion3.setPrecio(30000);
		habitacion3.setHabitaciones(1);
		habitacion3.setMetraje(30);		
		
		// Info Habitacion 4
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Habitacion 4, Doble - King");
		habitacion4.setDescripcion("Suite executive en Planta Superior con cama extragrande");
		habitacion4.setImagen(
				"https://media.gettyimages.com/id/871617622/es/foto/hotel-room-in-the-new-hotel-complex-in-moscow.jpg?s=612x612&w=0&k=20&c=337sxaLr58BU3FgOHl3Q5qYnTNDwhTsajyFN5rCm4I4=");
		habitacion4.setPrecio(40000);
		habitacion4.setHabitaciones(1);
		habitacion4.setMetraje(40);		
		
		// Info Habitacion 5
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Habitacion 5, Doble - King");
		habitacion5.setDescripcion("Suite executive en Planta Superior con cama extragrande");
		habitacion5.setImagen(
				"https://media.gettyimages.com/id/1254277224/es/foto/pared-de-piedra-de-roca-de-monta%C3%B1a-en-el-lujoso-apartamento-principal-dormitorio-interior.jpg?s=612x612&w=0&k=20&c=iGJ8AOUxyR_PRckY_vS92g1odDI2Ww7JgGNfiLf0uPw=");
		habitacion5.setPrecio(50000);
		habitacion5.setHabitaciones(1);
		habitacion5.setMetraje(50);		
		
		// Info Habitacion 6
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Habitacion 6, Doble - King");
		habitacion6.setDescripcion("Suite executive en Planta Superior con cama extragrande");
		habitacion6.setImagen(
				"https://media.gettyimages.com/id/1353440472/es/foto/elegante-interior-de-dormitorio-con-cama-doble-mesitas-de-noche-sill%C3%B3n-y-vistas-al-mar-a.jpg?s=612x612&w=0&k=20&c=2BpYL5T-xfGOs38L7TQvHOU3SRHwgSvC-svFyocxXzQ=");
		habitacion6.setPrecio(60000);
		habitacion6.setHabitaciones(1);
		habitacion6.setMetraje(60);		
		
		// Info Habitacion 7
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Habitacion 7, Doble - King");
		habitacion7.setDescripcion("Suite executive en Planta Superior con cama extragrande");
		habitacion7.setImagen(
				"https://media.gettyimages.com/id/1334117334/es/foto/render-digital-de-una-gran-habitaci%C3%B3n-en-suite-de-hotel.jpg?s=612x612&w=0&k=20&c=qBkhTfkm4NCZbxj8PSy_8xbSSysqQcKBJNcdrASvvVU=");
		habitacion7.setPrecio(70000);
		habitacion7.setHabitaciones(1);
		habitacion7.setMetraje(70);		
		
		// Info Habitacion 8
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Habitacion 8, Doble - King");
		habitacion8.setDescripcion("Suite executive en Planta Superior con cama extragrande");
		habitacion8.setImagen(
				"https://media.gettyimages.com/id/1392992509/es/foto/interior-de-la-peque%C3%B1a-casa-de-madera-con-muebles-de-cama-y-ventana-triangular.jpg?s=612x612&w=0&k=20&c=hs_H4fuaYqhH3o18yoRu-_wHZkldj1E9DVefdz0T5b0=");
		habitacion8.setPrecio(80000);
		habitacion8.setHabitaciones(1);
		habitacion8.setMetraje(80);		
		
		
		
		
		
		
		// Agrega Habitaciones a lista
		habitaciones.add(habitacion1);
		habitaciones.add(habitacion2);
		habitaciones.add(habitacion3);
		habitaciones.add(habitacion4);
		habitaciones.add(habitacion5);
		habitaciones.add(habitacion6);
		habitaciones.add(habitacion7);
		habitaciones.add(habitacion8);

		// Retorno de lista de habitaciones
		return habitaciones;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * MÃ©todo que entrega el objeto evento segun el id de busqueda
	 * 
	 * @param Evento evento
	 * @return Evento evento
	 * @author: Autor <autor@desafiolatam.com>
	 * @version: 23/08/2022
	 */
	public Habitacion getEventobyID(Habitacion habitacion) {

		List<Habitacion> listaHabitaciones = getHabitaciones();

		for (int x = 0; x < listaHabitaciones.size(); x++) {

			if (listaHabitaciones.get(x).getId() == habitacion.getId()) {
			  habitacion = listaHabitaciones.get(x);
			}
		}

		// Retorno de Evento
		return habitacion;
	}

	/**
	 * --------------------------------------------------------------------------------------------
	 * MÃ©todo retorna el valor a pagar de una habitacion segun el valor dia y cantidad de
	 * dias seleccionados
	 * 
	 * @param int valorEvento, int cantidadTickets
	 * @return int valor
	 * @author: Autor <autor@desafiolatam.com>
	 * @version: 23/08/2022
	 */
	public int calculaValorCompra(int valorEvento, int cantidadTickets) {
		int valor = valorEvento * cantidadTickets;
		return valor;
	}

}


