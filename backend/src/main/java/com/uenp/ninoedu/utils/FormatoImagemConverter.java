package com.uenp.ninoedu.utils;

import com.uenp.ninoedu.model.enums.FormatoImagem;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class FormatoImagemConverter implements AttributeConverter<FormatoImagem, Integer> {

    @Override
    public Integer convertToDatabaseColumn(FormatoImagem formatoImagem) {
        if (formatoImagem == null) return null;
        return formatoImagem.getValor(); // Salva 1 ou 2
    }

    @Override
    public FormatoImagem convertToEntityAttribute(Integer valor) {
        if (valor == null) return null;
        return FormatoImagem.fromValue(valor);
    }
}
