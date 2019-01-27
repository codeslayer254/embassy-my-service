package com.busyunit.embassy.service.resource;

import com.busyunit.embassy.service.controller.NavigationController;
import com.busyunit.embassy.service.model.Navigation;
import org.springframework.hateoas.Link;
import org.springframework.hateoas.mvc.ResourceAssemblerSupport;

import static org.springframework.hateoas.mvc.ControllerLinkBuilder.linkTo;
import static org.springframework.hateoas.mvc.ControllerLinkBuilder.methodOn;

/**
 * {@code BookAssembler} converts an article to Artilce resource with self link.
 * <p/>
 *
 * @author Ram Ayall
 * @since 08/04/18
 */
public class ArticleAssembler extends ResourceAssemblerSupport<Navigation, ArticleResource> {


    public ArticleAssembler() {
        super(NavigationController.class, ArticleResource.class);
    }

    @Override
    public ArticleResource toResource(Navigation navigation) {

        ArticleResource articleResource = new ArticleResource(navigation);

       /* Link selfLink = linkTo(
                methodOn(NavigationController.class).getArticle(navigation.getId()))
                .withSelfRel();
        articleResource.add(selfLink);*/

        return articleResource;
    }
}