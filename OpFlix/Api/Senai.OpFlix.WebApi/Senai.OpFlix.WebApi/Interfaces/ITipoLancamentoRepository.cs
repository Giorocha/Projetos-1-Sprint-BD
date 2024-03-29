﻿using Senai.OpFlix.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.OpFlix.WebApi.Interfaces
{
    interface ITipoLancamentoRepository
    {
        List<TipoLancamento> Listar();
        void Cadastrar(TipoLancamento tipoLancamento);
        void Atualizar(TipoLancamento tipoLancamento);
        TipoLancamento BuscarPorId(int id);
    }
}
