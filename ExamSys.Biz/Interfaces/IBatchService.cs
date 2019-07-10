using ExamSys.Biz.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExamSys.Biz.Interfaces
{
    public interface IBatchService
    {
        List<BatchModel> GetBatchList();
        bool DeletesBatchMaster(Guid ID);
        bool InsertUpdateBatchMaster(BatchModel mdl);
        List<BatchModel> GetBatchListByID(Guid ID);

    }
}
