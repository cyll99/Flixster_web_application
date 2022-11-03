using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text.Json;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flixster
{
    public partial class Detail : System.Web.UI.Page
    {
        //public frmFilms mainForm;
        private Film currentFilm = Default.listFilm.ElementAt(Default.index) ;
        public const String VIDEO_URL = "https://api.themoviedb.org/3/movie/{0}/videos?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed";

        protected void Page_Load(object sender, EventArgs e)
        {
            string html = "<html><head>";
            html += "<meta content='IE=Edge' http-equiv='X-UA-Compatible'/>";
            html += "<iframe id='video' src= 'https://www.youtube.com/embed/{0}' width='600' height='300' frameborder='0' allowfullscreen></iframe>";
            html += "</body></html>";
            this.Literal1.Text = string.Format(html, getYoutubeKey());
            if (Utilities.IsConnectedToInternet())
            {
                lblAverage.Text = Convert.ToString(currentFilm.vote_average);
                lblCount.Text = Convert.ToString(currentFilm.vote_count);
                lblDate.Text = currentFilm.release_date;
                lblOverview.Text = currentFilm.overview;
                lblLanguage.Text = currentFilm.original_language;
                lblTitle.Text = currentFilm.title;
                lblPopularity.Text = Convert.ToString(currentFilm.popularity);
                Image.ImageUrl = ("https://image.tmdb.org/t/p/w342" + currentFilm.backdrop_path);
                SqliteDataAccess.changeColor(Image1); // change the icon
            }
            else
            {
                lblAverage.Text = Convert.ToString(currentFilm.vote_average);
                lblCount.Text = Convert.ToString(currentFilm.vote_count);
                lblDate.Text = currentFilm.release_date;
                lblOverview.Text = currentFilm.overview;
                lblLanguage.Text = currentFilm.original_language;
                lblTitle.Text = currentFilm.title;
                lblPopularity.Text = Convert.ToString(currentFilm.popularity);
                Image.ImageUrl = "data:image/jpeg;base64," + Convert.ToBase64String(currentFilm.byte_back);
                SqliteDataAccess.changeColor(Image1); // change the icon
            }




        }
    
        /// <summary>
        /// return film's key to watch on youtube
        /// </summary>
        /// <returns></returns>
        private String getYoutubeKey()
        {

            String reponse = "";
            String youtubeKey = "";

            try
            {
                using (WebClient webClient = new WebClient())
                {
                    reponse = webClient.DownloadString(String.Format(VIDEO_URL, currentFilm.id));
                }

                using (JsonDocument document = JsonDocument.Parse(reponse))
                {
                    JsonElement root = document.RootElement;
                    JsonElement resultsList = root.GetProperty("results");

                    int i = 0;
                    while (true)
                    {
                        String type = resultsList[i].GetProperty("type").ToString();
                        youtubeKey = resultsList[i].GetProperty("key").ToString();
                        if (type.Equals("Clip"))
                        {
                            break;
                        }
                        i++;
                    }

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            return youtubeKey;
        }

    }
}