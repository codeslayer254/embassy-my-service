package com.busyunit.embassy.service.controller;

import com.busyunit.embassy.service.model.Navigation;
import com.busyunit.embassy.service.resource.ArticleResource;
import com.busyunit.embassy.service.service.NavigationService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.PagedResources;
import org.springframework.hateoas.Resources;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@RestController
@RequestMapping(value = "/api/v1/articles", produces = "application/hal+json")
public class NavigationController {

    @Autowired
    private  NavigationService navigationService;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    @ResponseStatus(value = HttpStatus.OK)
    public @ResponseBody
    Navigation get(@PathVariable Long id) {
        return navigationService.get(id);
    }

    @GetMapping
    public ResponseEntity<Resources<ArticleResource>> allArticles() {
        final List<ArticleResource> collection =
                navigationService.findAll().stream().map(ArticleResource::new).collect(Collectors.toList());
        final Resources<ArticleResource> resources = new Resources<>(collection);
        final String uriString = ServletUriComponentsBuilder.fromCurrentRequest().build().toUriString();
        resources.add(new Link(uriString, "self"));
        return ResponseEntity.ok(resources);
    }

    private String createLinkHeader(PagedResources<Navigation> pr){
        final StringBuilder linkHeader = new StringBuilder();
      //  linkHeader.append(buildLinkHeader(  pr.getLinks("first").get(0).getHref(),"first"));
        linkHeader.append(", ");
     //   linkHeader.append(buildLinkHeader( pr.getLinks("next").get(0).getHref(),"next"));
        return linkHeader.toString();
    }

    public static String buildLinkHeader(final String uri, final String rel) {
        return "<" + uri + ">; rel=\"" + rel + "\"";
    }
}
