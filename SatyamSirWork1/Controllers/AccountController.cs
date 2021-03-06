﻿
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using SatyamSirWork1.Models;
using Microsoft.Owin.Security;
using Microsoft.Owin;
using System.Net;

namespace SatyamSirWork1.Controllers
{
    public class AccountController : Controller
    {
        dbSatyamSirEntities db = new dbSatyamSirEntities();
        // GET: Account
        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login()
        {
            try
            {
                if (this.Request.IsAuthenticated)
                {
                    
                    return RedirectToAction("Index","Home");
                }
                
            }
            catch (Exception ex)
            {
                Console.Write(ex.Message);
            }
            return View();
        }
        [HttpPost]
        [AllowAnonymous]
        public ActionResult Login(tbl_user tb)
        {

            try
            {
                if (ModelState.IsValid)
                {
                    var logininfo = db.tbl_user.Where(x => x.UserName.ToUpper() == tb.UserName.ToUpper() && x.Pass_word == tb.Pass_word).ToList();
                    if (logininfo != null && logininfo.Count() > 0)
                    {
                        var logindetail = logininfo.First();
                        SignInUser(logindetail.UserName, false);
                        
                        return RedirectToAction("Index", "Home");
                    }
                    else
                    {
                        ModelState.AddModelError(string.Empty, "Invalid username or password");
                    }
                }
            }
            catch(Exception ex)
            {
                Console.Write(ex.Message);
            }
            return View(tb);
        }
        private void SignInUser(string username,bool isPersistent)
        {
            var claims = new List<Claim>();
            try
            {
                claims.Add(new Claim(ClaimTypes.Name, username));
                var claimIdenties = new ClaimsIdentity(claims,DefaultAuthenticationTypes.ApplicationCookie);
                var ctx = Request.GetOwinContext();
                var authenticationManager = ctx.Authentication;
                authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, claimIdenties);


            }
            catch(Exception ex)
            {
                throw ex;
            }

        }
        private void ClaimIdentities(string username, bool isPersistent)
        {
            var claims = new List<Claim>();
            try
            {
                claims.Add(new Claim(ClaimTypes.Name, username));
                var claimIdentities = new ClaimsIdentity(claims, DefaultAuthenticationTypes.ApplicationCookie);
            }
            catch(Exception ex)
            {
                throw ex;
            }

        }
        
        
        [AllowAnonymous]
        [HttpGet]
        public ActionResult LogOff()
        {
            var ctx = Request.GetOwinContext();
            var authenticationManager = ctx.Authentication;
            authenticationManager.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
            return RedirectToAction("Login", "Acount");

        }

    }
}