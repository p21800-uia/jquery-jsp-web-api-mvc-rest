package uia.com.apimvcrest.servicio;

import uia.com.apimvcrest.modelo.SolicitudOCModelo;
import uia.com.apimvcrest.modelo.ItemComprasUIAModelo;

import java.util.ArrayList;

public interface ISolicitudOCServicio {
    ArrayList<SolicitudOCModelo> getSolicitudesOC();
    Object getSolicitudOC(int id);
    void print();

    SolicitudOCModelo deleteSolicitudOC(int id);
    SolicitudOCModelo putSolicitudOC(int id, ItemComprasUIAModelo newItem);
}
