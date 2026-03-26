package com.uenp.ninoedu.utils;

import com.uenp.ninoedu.model.enums.Estagio;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class EstagioConverter implements AttributeConverter<Estagio, Integer> {

    // Converte do Enum (Java) para o Integer (Banco)
    @Override
    public Integer convertToDatabaseColumn(Estagio estagio) {
        if (estagio == null) {
            return null;
        }
        return estagio.getValor();
    }

    // Converte do Integer (Banco) para o Enum (Java)
    @Override
    public Estagio convertToEntityAttribute(Integer valor) {
        if (valor == null) {
            return null;
        }
        return Estagio.valueOf(valor);
    }
}