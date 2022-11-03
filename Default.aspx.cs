﻿using System;
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
        public static int index = 0;
        public static List<Film> listFilm;
        public delegate void delPassFilm(Film film);

        protected void Page_Load(object sender, EventArgs e)
        {
            SqliteDataAccess.CreateIfNotExists();// create the database
            changeColor();
            // save the films in the datavase
            if (Utilities.IsConnectedToInternet())
            {
                listFilm = Utilities.getMovieDbList();
                foreach (Film film in listFilm)
                    SqliteDataAccess.SaveFilm(film);
            }
            
            afficher(index);
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
                SqliteDataAccess.SaveFilm(film);

                lbl_title.Text = film.title;
                label1.Text = film.overview;
                pictureBox1.ImageUrl = ("https://image.tmdb.org/t/p/w342" + film.poster_path);
            }
            else
            {// films from database
                listFilm = SqliteDataAccess.LoadFilms();
                Film film = listFilm.ElementAt(index);
                lbl_title.Text = film.title;
                label1.Text = film.overview;
                pictureBox1.ImageUrl = "data:image/jpeg;base64," + Convert.ToBase64String(film.image);
            }

            if (index > 0)
                btn_precedent.Enabled = true;
            else
                btn_precedent.Enabled = false;


            if (index == listFilm.Count - 1)
                btn_suivant.Enabled = false;
            else
                btn_suivant.Enabled = true;

        }

        protected void btn_precedent_Click(object sender, EventArgs e)
        {
            index -= 1;
            afficher(index);
            changeColor();
        }

        protected void btn_suivant_Click(object sender, EventArgs e)
        {
            index += 1;
            afficher(index);
            changeColor();
        }

        public void changeColor()
        {
            if (Utilities.IsConnectedToInternet())
                Image1.ImageUrl = "~/ressources/blue.png";
            else
                Image1.ImageUrl = "~/ressources/red.png";
        }
       

    }
}