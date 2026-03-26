package com.uenp.ninoedu.utils;

import com.uenp.ninoedu.model.enums.TipoColorir;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class TipoColorirConverter implements AttributeConverter<TipoColorir, Integer> {

    @Override
    public Integer convertToDatabaseColumn(TipoColorir tipoColorir) {
        if (tipoColorir == null) return null;
        return tipoColorir.getValor(); // Salva 1, 2 ou 3
    }

    @Override
    public TipoColorir convertToEntityAttribute(Integer valor) {
        if (valor == null) return null;
        return TipoColorir.fromValue(valor);
    }
}
