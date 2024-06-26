﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using RestAPI.Db;
using System.Reflection.Metadata;
using ZMHDotNetCore.RestAPI.Models;

namespace ZMHDotNetCore.RestAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BlogController : ControllerBase
    {
        //private readonly AppDBContext _context;

        //public BlogController()
        //{
        //    _context = new AppDBContext();
        //}
        // private readonly appDBContext _context = new appDBContext();

        private readonly AppDBContext _context;

        public BlogController(AppDBContext context)
        {
            _context = context;
        }

        [HttpGet] // declare http method for below function
        public IActionResult Read()
        {
            var list = _context.Blogs.ToList();
            return Ok(list);
        }

        [HttpGet("{id}")]
        public IActionResult Edit(int id)
        {
            var item = _context.Blogs.FirstOrDefault(x => x.BlogId == id);
            if (item is null)
            {
                return NotFound("No data found.");
            }
            return Ok(item);
        }

        [HttpPost]
        public IActionResult Create(BlogModel Blog)
        {
            _context.Blogs.Add(Blog);
            var result = _context.SaveChanges();
            var msg = result > 0 ? "created success" : "failed";
            return Ok(msg);
        }

        [HttpPut("{id}")]
        public IActionResult Update(int id, BlogModel Blog)
        {
            var item = _context.Blogs.FirstOrDefault(x => x.BlogId == id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            item.BlogTitle = Blog.BlogTitle;
            item.BlogAuthor = Blog.BlogAuthor;
            item.BlogContent = Blog.BlogContent;
            var result = _context.SaveChanges();

            string message = result > 0 ? "Updating Successful." : "Updating Failed.";
            return Ok(message);
        }

        [HttpPatch("{id}")]
        public IActionResult Patch(int id, BlogModel Blog)
        {
            var item = _context.Blogs.FirstOrDefault(x => x.BlogId == id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            if (!string.IsNullOrEmpty(Blog.BlogTitle))
            {
                item.BlogTitle = Blog.BlogTitle;
            }
            if (!string.IsNullOrEmpty(Blog.BlogAuthor))
            {
                item.BlogAuthor = Blog.BlogAuthor;
            }
            if (!string.IsNullOrEmpty(Blog.BlogContent))
            {
                item.BlogContent = Blog.BlogContent;
            }
            var result = _context.SaveChanges();

            string msg = result > 0 ? "Updating Successful." : "Updating Failed.";
            return Ok(msg);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var item = _context.Blogs.FirstOrDefault(x => x.BlogId == id);
            if (item is null)
            {
                return NotFound("No data found.");
            }

            _context.Blogs.Remove(item);
            var result = _context.SaveChanges();

            string message = result > 0 ? "Deleting Successful." : "Deleting Failed.";
            return Ok(message);
        }
    }
}
