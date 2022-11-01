using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flixster
{
    public partial class Default : System.Web.UI.Page
    {
        int index = 0;
        public static List<Film> listFilm;
        public Film currentFilm;
        public delegate void delPassFilm(Film film);
        Graphics formGraphics;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqliteDataAccess.CreateIfNotExists();
            afficher(index);
            //changeColor();
        }

        /// <summary>
        /// Go to the previous film and check internet connection
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btn_precedent_Click(object sender, EventArgs e)
        {
            index -= 1;
            afficher(index);
            //changeColor();

        }

        /// <summary>
        /// Go to the next film and check internet connection
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void button1_Click(object sender, EventArgs e)
        {
            index += 1;
            afficher(index);
            //changeColor();

        }

        /// <summary>
        /// display film from website or database
        /// </summary>
        /// <param name="index"></param>
        public void afficher(int index)
        {


            if (Utilities.IsConnectedToInternet())
            {// films from api
                listFilm = Utilities.getMovieDbList();
                Film film = listFilm.ElementAt(index);
                currentFilm = film;
                SqliteDataAccess.SaveFilm(film);

                lbl_title.Text = film.title;
                label1.Text = film.overview;
                //label1.MaximumSize = new Size(50, 0);
                //pictureBox1.LoadAsync("https://image.tmdb.org/t/p/w342" + film.backdrop_path);
            }
            else
            {// films from database
                listFilm = SqliteDataAccess.LoadFilms();
                Film film = listFilm.ElementAt(index);
                currentFilm = film;
                lbl_title.Text = film.title;
                label1.Text = film.overview;
                //label1.MaximumSize = new Size(50, 0);
                //pictureBox1.Image = film.image;
            }

            //if (index > 0)
            //    btn_precedent.Enabled = true;
            //else
            //    btn_precedent.Enabled = false;


            //if (index == listFilm.Count - 1)
            //    btn_suivant.Enabled = false;
            //else
            //    btn_suivant.Enabled = true;

        }
        /// <summary>
        /// send user to detail page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        //private void pictureBox1_Click(object sender, EventArgs e)
        //{
        //    frmFilmDetail detail = new frmFilmDetail();
        //    delPassFilm del = new delPassFilm(detail.getFilm);
        //    del(this.currentFilm);
        //    this.Hide();
        //    detail.ShowDialog();
        //    this.Show();
        //}

    }
}