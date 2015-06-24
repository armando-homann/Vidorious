using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace VidoriousUnitTests
{
    [TestClass]
    public class VideoUploadTest
    {
        BusinessLogic.VideoUpload videoUpload = new BusinessLogic.VideoUpload();

        [TestMethod]
        public void UploadVideosTest()
        {
            BusinessLogic.Validator valid = new BusinessLogic.Validator();

            BusinessLogic.VideoUploadObject videoUploadObject = new BusinessLogic.VideoUploadObject()
            {
                Id = Guid.NewGuid(),
                Name = "testVideo",
                Type = "mp4",
                //Todo: Get video byte file
                //Data = new Byte(),
                DateCreated = DateTime.Now
            };

            valid = videoUpload.UploadVideos(videoUploadObject);
        }

        [TestMethod]
        public void GetVideosTest()
        {
            BusinessLogic.Validator valid = new BusinessLogic.Validator();
            List<BusinessLogic.VideoUploadObject> videoUploadObjectList = new List<BusinessLogic.VideoUploadObject>();

            videoUploadObjectList = videoUpload.GetVideos(out valid);
        }
    }
}
