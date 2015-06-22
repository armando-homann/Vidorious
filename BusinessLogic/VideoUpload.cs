using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public class VideoUploadObject
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }
        public byte[] Data { get; set; }
        public DateTime? DateCreated { get; set; }
    }

    public class VideoUpload
    {
        VidoriousEntities entity = new VidoriousEntities();

        public Validator UploadVideos(VideoUploadObject videoUploadObject)
        {
            Validator valid = new Validator();

            try
            {
                Video videos = new Video()
                {
                    Id = videoUploadObject.Id,
                    Name = videoUploadObject.Name,
                    Type = videoUploadObject.Type,
                    Data = videoUploadObject.Data,
                    DateCreated = videoUploadObject.DateCreated
                };

                entity.Videos.Add(videos);
                entity.SaveChanges();

                valid = new Validator { ID = videoUploadObject.Id, Status = Constants.Success };
            }
            catch(Exception e)
            {
                valid = new Validator { ID = Guid.NewGuid(), Status = e.Message };
            }

            return valid;
        }
    }
}
